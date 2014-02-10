//
//  AppApplicationX.cpp
//  emptyToX
//
//  Created by Binglin on 14-1-31.
//  Copyright (c) 2014年 Binglin. All rights reserved.
//

#include "CCApplication.h"

//#include "AppDelegate.h"
#include "AppApplicationX.h"

#include "cocos2d.h"
#include "SimpleAudioEngine.h"
#include "HelloWorldScene.h"

USING_NS_CC;
using namespace CocosDenshion;

AppApplicationCocos2dx::AppApplicationCocos2dx()
{
    
}

AppApplicationCocos2dx::~AppApplicationCocos2dx()
{
}

bool AppApplicationCocos2dx::applicationDidFinishLaunching()
{
    // initialize director
    CCDirector *pDirector = CCDirector::sharedDirector();
    CCEGLView *eglView = CCEGLView::sharedOpenGLView();
    
    
    pDirector->setOpenGLView(eglView);
    
    // turn on display FPS
    pDirector->setDisplayStats(true);
    
    // set FPS. the default value is 1.0/60 if you don't call this
    pDirector->setAnimationInterval(1.0 / 60);
    
    // create a scene. it's an autorelease object
    CCScene *pScene = HelloWorld::scene();
    
    // run
    pDirector->runWithScene(pScene);
    
    return true;
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppApplicationCocos2dx::applicationDidEnterBackground()
{
    CCDirector::sharedDirector()->stopAnimation();
    SimpleAudioEngine::sharedEngine()->pauseBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->pauseAllEffects();
}

// this function will be called when the app is active again
void AppApplicationCocos2dx::applicationWillEnterForeground()
{
    CCDirector::sharedDirector()->startAnimation();
    SimpleAudioEngine::sharedEngine()->resumeBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->resumeAllEffects();
}



