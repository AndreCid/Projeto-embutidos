//Trabalho final de embutidos - Robo seguidor de linha
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

uint16_t Sensores[2];
uint8_t ADCMUx,PWM,aux;
double PID, I, K, P, D, Erro, Kp, Kd, Ki, ValorAtual,ErroAntigo;
double SetPoint1 = -100;//------------ faixa de valores onde o carrinho esta em cima da faixa
double SetPoint1 = 100;
int MotorEsquerdo,MotorDireito, i = 0;


void InitADC() //------------------- Registradores necessarios para a utilizacao de ADCs
{
	ADMUX=(1<<REFS0);
	ADCSRA=(1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
	return;
}

void InitPWM() //------------------- Funçao que inicializa os timers responsaveis pelo PWM
{
	TCCR1A |= (1<<COM1A1)|(1<<COM1B1)|(1<<WGM11)|(1<<WGM10);
	TCCR1B |= (1<<CS10);
	return;
	//Neste caso utiliza-se do timer 1(16 bits) na funçao de phase correct PWM, nao invertido.
}

uint16_t ReadADC(uint8_t ch)//------Funçao para ler um sinal analogico
{
	ch=ch&0b00000111;
	ADMUX|=ch;
	ADCSRA|=(1<<ADSC);
	while(!(ADCSRA & (1<<ADIF)));
	ADCSRA|=(1<<ADIF);
	return(ADC);
}

void ReadSensors()
{
	for(i = 0; i == 2; i++)
	{
		ADCMUx = i;//---------------- De acordo com i, sera selecionado um ADC diferente.
		ReadADC(ADCMUx);
		Sensores[i] = ADCMUx;
		_delay_ms(10);
		ReadADC(ADCMUx);
		Sensores[i] = ADCMUx;
		_delay_ms(10);//------------- E realizado duas leituras de um mesmo sinal analogico pois quando
		// se ler apenas uma vez, o valor fica muito errado. Isso se deve ao tempo de processamento para conversao de multiplos ADCs
	}
	return;
}

void CalculatePID()
{
    //------------------------------------------------------ Calculo do PID atraves do erro do sistem em relacao ao setpoint
	ValorAtual = Sensores[2] - Sensores[0];
	// Caso o carrinho esteja fora da faixa de valores, então sera calculado o erro. Caso contrário sera erro nulo.
	if((ValorAtual>SetPoint2) || (ValorAtual <SetPoint1)){
	Erro =  0 - ValorAtual;
	if (Erro<0)
  	{
    	Erro = Erro * (-1);
    	aux = 1;
  	}
  	else if(Erro>0){
    	aux = 2;
  	}
  	else
  	{
    	aux = 0;
  	}
	}
    	else
    	{
    	Erro = 0;
    	}
	I = I + Erro;
	D = Erro - ErroAntigo;
	PID = (Ki*I) + (Kd*D) + (Kp*Erro);
	ErroAntigo = Erro;
	return;
}

void ControlMotor()
{
    //-------------------------------------- Ira desacelerar o motor necessario de acordo com PID calculado
	if(aux == 1)
	{
		MotorEsquerdo = 100;
		MotorDireito  =(int)(PID);
	}
	else if(aux == 2)
	{
		MotorEsquerdo = (int)(PID);
		MotorDireito  = 100;
	}
	else
	{
		MotorEsquerdo = 150;
		MotorDireito  = 150;
	}
	OCR1A = MotorEsquerdo; //-------------- Duty-cycle do motor esquerdo
	OCR1B = MotorDireito;  //-------------- Duty-cycle do motor direito
	return;
}


void main()
{
	DDRC = 0b00000000; //--------------------------------- Define os pinos de entrada analogica para os sensores do robo
	DDRB = 0b00000110; //--------------------------------- Define os pinos (todos PWM) como saida que ira controlar a velocidade dos motores
	DDRD = 0b00001111; //--------------------------------- Portas que irao defir o sentido de rotaçao do motor
	PORTD = 0b00001001;//--------------------------------- Os motores irao andar sempre pra frente
	InitADC();	       //--------------------------------- Carrega configuracoes iniciais dos ADC disponiveis
	InitPWM();//------------------------------------------ Inicializa os timers responsaveis pelo PWM
	//---------------------------------------------------- Inicializacao de variaveis do PID;
	Kd = 10; //------------------------------ Ganho derivativo
	Kp = 10; //------------------------------ Ganho proporcional
	Ki = 0.1; //------------------------------ Ganho intergal
	I = 0; //------------------------------- Integrador
	while(1)
	{
		ReadSensors();
		CalculatePID();
		ControlMotor();
	}
}
