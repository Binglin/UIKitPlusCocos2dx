//
//  AppDelegate.m
//  emptyToX
//
//  Created by Binglin on 14-1-31.
//  Copyright (c) 2014年 Binglin. All rights reserved.
//
#include "cocos2d.h"
#import "AppDelegate.h"
#include "AppApplicationX.h"

//static AppDelegate s_sharedApplication;
static AppApplicationCocos2dx s_sharedApplicaiton;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
        return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
//     cocos2d::CCDirector::sharedDirector()->pause();
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    cocos2d::CCApplication::sharedApplication()->applicationDidEnterBackground();
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    cocos2d::CCApplication::sharedApplication()->applicationWillEnterForeground();
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     cocos2d::CCDirector::sharedDirector()->resume();
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
