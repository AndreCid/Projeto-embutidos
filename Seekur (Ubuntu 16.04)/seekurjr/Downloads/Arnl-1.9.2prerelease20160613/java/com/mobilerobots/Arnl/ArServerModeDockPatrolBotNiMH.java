/*
Adept MobileRobots Advanced Robotics Navigation and Localization (ARNL)
Version 1.9.2prerelease20160613

Copyright (C) 2004-2005 ActivMedia Robotics LLC
Copyright (C) 2006-2009 MobileRobots Inc.
Copyright (C) 2010-2016 Adept Technology, Inc.

All Rights Reserved.

Adept MobileRobots does not make any representations about the
suitability of this software for any purpose.  It is provided "as is"
without express or implied warranty.

The license for this software is distributed as LICENSE.txt in the top
level directory.

robots@mobilerobots.com
Adept MobileRobots
10 Columbia Drive
Amherst, NH 03031
+1-603-881-7960

*/
/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.40
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.mobilerobots.Arnl;

  import com.mobilerobots.Aria.*;
  import com.mobilerobots.ArNetworking.*;
  import com.mobilerobots.BaseArnl.*;

public class ArServerModeDockPatrolBotNiMH extends ArServerModeDockPatrolBot {
  private long swigCPtr;

  /* for internal use by swig only */
  public ArServerModeDockPatrolBotNiMH(long cPtr, boolean cMemoryOwn) {
    super(ArnlJavaJNI.SWIGArServerModeDockPatrolBotNiMHUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  /* for internal use by swig only */
  public static long getCPtr(ArServerModeDockPatrolBotNiMH obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        ArnlJavaJNI.delete_ArServerModeDockPatrolBotNiMH(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public boolean isDocked() {
    return ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_isDocked(swigCPtr, this);
  }

  public boolean subclassAddParamsDoneCharging(ArConfig config, String section) {
    return ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_subclassAddParamsDoneCharging(swigCPtr, this, ArConfig.getCPtr(config), config, section);
  }

  public boolean subclassDoneCharging() {
    return ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_subclassDoneCharging(swigCPtr, this);
  }

  public boolean subclassNotDoneCharging() {
    return ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_subclassNotDoneCharging(swigCPtr, this);
  }

  public boolean subclassNeedsAutoDock(String reason, long lenOfReason) {
    return ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_subclassNeedsAutoDock(swigCPtr, this, reason, lenOfReason);
  }

  public void subclassGetDockInfoString(String dockInfoStr, long dockInfoStrLength, boolean terse) {
    ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_subclassGetDockInfoString(swigCPtr, this, dockInfoStr, dockInfoStrLength, terse);
  }

  public void setAutoDock(boolean autoDocking) {
    ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_setAutoDock(swigCPtr, this, autoDocking);
  }

  public void setNeedBalance(boolean needBalance) {
    ArnlJavaJNI.ArServerModeDockPatrolBotNiMH_setNeedBalance(swigCPtr, this, needBalance);
  }

}
