//
//  LogonViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "LogonViewController.h"
#import "SerViewController.h"
#import "MainViewController.h"
#import "ActViewController.h"
#import "TextViewController.h"
#import "InforViewController.h"
#import "RegViewController.h"

@interface LogonViewController ()<UITextFieldDelegate>

@end

@implementation LogonViewController

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
    tf1.placeholder=@"请输入账号";
    UIImageView *imageV3=[[UIImageView alloc]initWithFrame:CGRectMake(30, 270, 45, 45)];
    UIImage *image3=[UIImage imageNamed:@"user_img"];
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
    tf2.placeholder=@"请输入密码";
    tf2.secureTextEntry=YES;
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(30, 325, 45, 45)];
    UIImage *image4=[UIImage imageNamed:@"pass_img"];
    imageV4.image=image4;
    tf2.leftView=imageV4;
    tf2.leftViewMode=UITextFieldViewModeAlways;
    UIImageView *imageV6=[[UIImageView alloc]initWithFrame:CGRectMake(70, 330, 2, 35)];
    UIImage *image6=[UIImage imageNamed:@"line"];
    image6=[image6 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    imageV6.image=image6;
    [self.view addSubview:tf2];
    [self.view addSubview:imageV6];
    
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(65, 400, 100, 35) ;
    [button1 setTitle:@"登陆" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button1.backgroundColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    button1.layer.masksToBounds=YES;
    button1.layer.cornerRadius=5;
    button1.layer.borderColor=[UIColor whiteColor].CGColor;
    button1.layer.borderWidth=1;
    [button1.titleLabel setFont:[UIFont systemFontOfSize:20]];
    //   [button1.titleLabel setFont:[UIFont fontWithName:@"黑体" size:50]];
    [self.view addSubview:button1];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(200, 400, 100, 35) ;
    [button2 setTitle:@"注册" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button2.backgroundColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    button2.layer.masksToBounds=YES;
    button2.layer.cornerRadius=5;
    button2.layer.borderColor=[UIColor whiteColor].CGColor;
    button2.layer.borderWidth=1;
    [button2.titleLabel setFont:[UIFont systemFontOfSize:20]];
    //   [button1.titleLabel setFont:[UIFont fontWithName:@"黑体" size:50]];
    [self.view addSubview:button2];
    
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(50, 440, 80, 20)];
    label2.text=@"自动登录";
    label2.textColor=[UIColor colorWithRed:0.06f green:0.40f blue:0.64f alpha:1.00f];
    label2.font=[UIFont systemFontOfSize:16];
    [self.view addSubview:label2];
    
    tf1.delegate=self;
    tf2.delegate=self;
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapME :)];
    tap.cancelsTouchesInView=NO;
    [self.view addGestureRecognizer:tap];
    
    UIImage *image8=[UIImage imageNamed:@"checkbox_unchecked"];
    image8=[image8 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIButton *button3=[UIButton  buttonWithType:UIButtonTypeSystem];
    [button3 setBackgroundColor:[UIColor clearColor]];
    button3.frame=CGRectMake(30, 442, 15, 15);
    button3.layer.masksToBounds=YES;
    [button3 setBackgroundImage:[UIImage imageNamed:@"checkbox_checked"] forState:UIControlStateSelected];
    button3.imageView.contentMode=UIViewContentModeCenter;
    [button3 setBackgroundImage:image8 forState:UIControlStateNormal];
    button3.layer.borderWidth=2;
    button3.layer.borderColor=[UIColor colorWithRed:0.04f green:0.38f blue:0.62f alpha:1.00f].CGColor;
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(button3BtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [button1 addTarget:self action:@selector(button1BtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [button2 addTarget:self action:@selector(button2BtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)button3BtnClick:(UIButton *)button
{
    button.selected=!button.isSelected;
}

-(void)button1BtnClick:(UIButton *)button
{
    
    MainViewController *main=[[MainViewController alloc]init];
    UINavigationController *MainNav=[[UINavigationController alloc]initWithRootViewController:main];
    UIImage *image11=[UIImage imageNamed:@"radio_button1_normal"];
    image11=[image11 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image12=[UIImage imageNamed:@"radio_button1_pressed"];
    image12=[image12 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MainNav.tabBarItem.image=image11;
    MainNav.tabBarItem.selectedImage=image12;
    
    SerViewController *ser=[[SerViewController alloc]
                            init];
    UINavigationController *serNav=[[UINavigationController alloc]initWithRootViewController:ser];
    UIImage *image21=[UIImage imageNamed:@"radio_button2_normal"];
    image21=[image21 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image22=[UIImage imageNamed:@"radio_button2_pressed"];
    image22=[image22 imageWithRenderingMode:
             UIImageRenderingModeAlwaysOriginal];
    serNav.tabBarItem.image=image21;
    serNav.tabBarItem.selectedImage=image22;
    
    TextViewController *text=[[TextViewController alloc]init];
    UINavigationController *textNav=[[UINavigationController alloc]initWithRootViewController:text];
    UIImage *image31=[UIImage imageNamed:@"radio_button3_normal"];
    image31=[image31 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image32=[UIImage imageNamed:@"radio_button3_pressed"];
    image32=[image32 imageWithRenderingMode:
             UIImageRenderingModeAlwaysOriginal];
    textNav.tabBarItem.image=image31;
    textNav.tabBarItem.selectedImage=image32;
    
    ActViewController *act=[[ActViewController alloc]init];
    UINavigationController *actNav=[[UINavigationController alloc]initWithRootViewController:act];
    UIImage *image41=[UIImage imageNamed:@"radio_button4_normal"];
    image41=[image41 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image42=[UIImage imageNamed:@"radio_button4_pressed"];
    image42=[image42 imageWithRenderingMode:
             UIImageRenderingModeAlwaysOriginal];
    actNav.tabBarItem.image=image41;
    actNav.tabBarItem.selectedImage=image42;
    
    InforViewController *inf=[[InforViewController alloc]init];
    UINavigationController *infNav=[[UINavigationController alloc]initWithRootViewController:inf];
    UIImage *image51=[UIImage imageNamed:@"radio_button5_normal"];
    image51=[image51 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image52=[UIImage imageNamed:@"radio_button5_pressed"];
    image52=[image52 imageWithRenderingMode:
             UIImageRenderingModeAlwaysOriginal];
    infNav.tabBarItem.image=image51;
    infNav.tabBarItem.selectedImage=image52;
    
    [[UINavigationBar appearance] setTranslucent:NO];
    UITabBarController *tabbarC=[[UITabBarController alloc]init];
    tabbarC.viewControllers=[NSArray arrayWithObjects:MainNav,serNav,textNav,actNav,infNav,nil];
    tabbarC.tabBar.barTintColor = [UIColor blackColor];
    [self presentViewController:tabbarC animated:YES completion:^{
        
    }];
    
}
-(void)button2BtnClick:(UIButton *)button
{
    RegViewController *reg=[[RegViewController alloc]init];
    reg.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:reg animated:YES completion:^{
        
    }];
}


-(void)tapME:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //取消第一响应者
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
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
