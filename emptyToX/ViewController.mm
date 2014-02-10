//
//  ViewController.m
//  emptyToX
//
//  Created by Binglin on 14-1-31.
//  Copyright (c) 2014年 Binglin. All rights reserved.
//

#import "ViewController.h"
#import "cocos2d.h"
#import "cocos2dxViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *button =  [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
    [button addTarget:self action:@selector(gotoCocos2dx) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor yellowColor]];
    
    [self.view addSubview:button];
    [button release];
    
}
-(void)gotoCocos2dx
{
    cocos2dxViewController *vc = [cocos2dxViewController shareController];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
