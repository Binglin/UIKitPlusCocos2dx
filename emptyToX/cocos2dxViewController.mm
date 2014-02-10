//
//  cocos2dxViewController.m
//  emptyToX
//
//  Created by Binglin on 14-1-31.
//  Copyright (c) 2014年 Binglin. All rights reserved.
//

#import "cocos2dxViewController.h"
#import "HelloWorldScene.h"
#import "cocos2d.h"
#import "EAGLView.h"

USING_NS_CC;

@interface cocos2dxViewController ()

@end

@implementation cocos2dxViewController

+(cocos2dxViewController *)shareController
{
    static cocos2dxViewController *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[cocos2dxViewController alloc] init];
        [sharedManager setupCocos2dx];
    });
    return sharedManager;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    [self setupCocos2dx];
    

}


-(void)setupCocos2dx
{
    EAGLView *glview = [[EAGLView alloc]
                      initWithFrame:[self.view bounds]
                      pixelFormat:kEAGLColorFormatRGBA8
                      depthFormat:GL_DEPTH_COMPONENT16
                      preserveBackbuffer:NO
                      sharegroup:nil
                      multiSampling:NO
                      numberOfSamples:0];
    self.view = glview;
//    [[EAGLView sharedEGLView] retain];
    CCDirector *director = CCDirector::sharedDirector();
    director->setOpenGLView(CCEGLView::sharedOpenGLView());
    
    CCApplication::sharedApplication()->run();
    director->setDisplayStats(true);
    
    CCScene *scene = HelloWorld::scene();
    CCDirector::sharedDirector()->runWithScene(scene);
    
    
}

-(void)dealloc
{
    [super dealloc];
//    [];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
