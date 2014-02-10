//
//  AppApplicationX.h
//  emptyToX
//
//  Created by Binglin on 14-1-31.
//  Copyright (c) 2014年 Binglin. All rights reserved.
//

#ifndef __emptyToX__AppApplicationX__
#define __emptyToX__AppApplicationX__

#
/**
 @brief    The cocos2d Application.
 
 The reason to implement with private inheritance is to hide some interface details of CCDirector.
 */
class  AppApplicationCocos2dx : private cocos2d::CCApplication
{
public:
    AppApplicationCocos2dx();
    virtual ~AppApplicationCocos2dx();
    
    /**
     @brief    Implement CCDirector and CCScene init code here.
     @return true    Initialize success, app continue.
     @return false   Initialize failed, app terminate.
     */
    virtual bool applicationDidFinishLaunching();
    
    /**
     @brief  The function is called when the application enters the background
     @param  the pointer of the application instance
     */
    virtual void applicationDidEnterBackground();
    
    /**
     @brief  The function is called when the application enters the foreground
     @param  the pointer of the application instance
     */
    virtual void applicationWillEnterForeground();
};

//#endif // _APP_DELEGATE_H_

#endif /* defined(__emptyToX__AppApplicationX__) */
