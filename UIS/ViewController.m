//
//  ViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//
#import "ViewController.h"
#import "LogonViewController.h"
#import "SerViewController.h"
#import "MainViewController.h"
#import "ActViewController.h"
#import "TextViewController.h"
#import "InforViewController.h"
#import "RegViewController.h"
#import "MyUploadViewController.h"
@interface ViewController ()
{
    NSTimer *myTimer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image=[UIImage imageNamed:@"login_1.jpg"];
    UIImageView *imagev=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    imagev.image=image;
    [self.view addSubview:imagev];
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scrollTimer) userInfo:nil repeats:NO];

}
-(void)scrollTimer
{
  LogonViewController *logon=[[LogonViewController alloc]init];
    logon.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:logon animated:YES completion:^{
        
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
