//
//  RegViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "RegViewController.h"
#import "LogonViewController.h"
@interface RegViewController ()<UITextFieldDelegate>

@end

@implementation RegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    UIImage *image=[UIImage imageNamed:@"kaiji1"];
    imageV.image=image;
    [self.view addSubview:imageV];
    
    
    UIImage *image2=[UIImage imageNamed:@"actionbar"];
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(-155, 165, 675, 70)];
    imageV2.image=image2;
    [self.view addSubview:imageV2];
    
    UIImage *image1=[UIImage imageNamed:@"login_logo"];
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(138.5, 75, 100, 100)];
    imageV1.image=image1;
    [self.view addSubview:imageV1];
    
    
    
    UITextField *tf1 =[[UITextField alloc]initWithFrame:CGRectMake(30, 270, 315, 45)];
    tf1.backgroundColor=[UIColor whiteColor];
    tf1.layer.masksToBounds=YES;
    tf1.layer.cornerRadius=3;
    tf1.placeholder=@"请输入邮箱";
    UIImageView *imageV3=[[UIImageView alloc]initWithFrame:CGRectMake(30, 270, 45, 45)];
    UIImage *image3=[UIImage imageNamed:@"email_img"];
    imageV3.image=image3;
    tf1.leftView=imageV3;
    tf1.leftViewMode=UITextFieldViewModeAlways;
    UIImageView *imageV5=[[UIImageView alloc]initWithFrame:CGRectMake(70, 275, 2, 35)];
    UIImage *image5=[UIImage imageNamed:@"line"];
    image5=[image5 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    imageV5.image=image5;
    [self.view addSubview:tf1];
    [self.view addSubview:imageV5];
    
    UITextField *tf2 =[[UITextField alloc]initWithFrame:CGRectMake(30, 325, 315, 45)];
    tf2.backgroundColor=[UIColor whiteColor];
    tf2.layer.masksToBounds=YES;
    tf2.layer.cornerRadius=3;
    tf2.placeholder=@"请输入账号";
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(30, 325, 45, 45)];
    UIImage *image4=[UIImage imageNamed:@"user_img"];
    imageV4.image=image4;
    tf2.leftView=imageV4;
    tf2.leftViewMode=UITextFieldViewModeAlways;
    UIImageView *imageV6=[[UIImageView alloc]initWithFrame:CGRectMake(70, 330, 2, 35)];
    UIImage *image6=[UIImage imageNamed:@"line"];
    image6=[image6 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    imageV6.image=image6;
    [self.view addSubview:tf2];
    [self.view addSubview:imageV6];
    
    UITextField *tf3 =[[UITextField alloc]initWithFrame:CGRectMake(30, 380, 315, 45)];
    tf3.backgroundColor=[UIColor whiteColor];
    tf3.layer.masksToBounds=YES;
    tf3.layer.cornerRadius=3;
    tf3.placeholder=@"请输入密码";
    tf3.secureTextEntry=YES;
    UIImageView *imageV7=[[UIImageView alloc]initWithFrame:CGRectMake(30, 380, 45, 45)];
    UIImage *image7=[UIImage imageNamed:@"pass_img"];
    imageV7.image=image7;
    tf3.leftView=imageV7;
    tf3.leftViewMode=UITextFieldViewModeAlways;
    UIImageView *imageV8=[[UIImageView alloc]initWithFrame:CGRectMake(70, 385, 2, 35)];
    UIImage *image8=[UIImage imageNamed:@"line"];
    image8=[image8 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    imageV8.image=image8;
    [self.view addSubview:tf3];
    [self.view addSubview:imageV8];
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(123, 475, 135, 35) ;
    [button1 setTitle:@"确认注册" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button1.backgroundColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    button1.layer.masksToBounds=YES;
    button1.layer.cornerRadius=5;
    button1.layer.borderColor=[UIColor whiteColor].CGColor;
    button1.layer.borderWidth=1;
    [button1.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [self.view addSubview:button1];
    
    tf1.delegate=self;
    tf2.delegate=self;
    tf3.delegate=self;
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapMe:)];
    tap.cancelsTouchesInView=NO;
    [self.view addGestureRecognizer:tap];
    
    [button1 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
}

-(void)tapMe:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)Click:(UIButton *)button
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
