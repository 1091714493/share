//
//  MessageViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"消息设置" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 140, 40);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    

    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 50, 375, 2)];
    view1.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view1];
    
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(0, 100, 375, 2)];
    view2.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view2];
    
    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(0,150, 375, 2)];
    view3.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view3];
    
    UIView *view4=[[UIView alloc]initWithFrame:CGRectMake(0,200, 375, 2)];
    view4.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view4];
    
    UIView *view5=[[UIView alloc]initWithFrame:CGRectMake(0,250, 375, 2)];
    view5.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view5];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(40, 15, 160, 20)];
    label1.text=@"接受新消息通知";
    label1.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label1];
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(275, 15, 20, 20);
    UIImage *image11=[UIImage imageNamed:@"my_button_pressed"];
    image11=[image11 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image12=[UIImage imageNamed:@"my_button_normal"];
    image12=[image12 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [button1 setBackgroundImage:image12 forState:UIControlStateSelected];
    [button1 setBackgroundImage:image11 forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(40, 65, 160, 20)];
    label2.text=@"通知显示栏";
    label2.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label2];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(275, 65, 20, 20);

    [button2 setBackgroundImage:image12 forState:UIControlStateSelected];
    [button2 setBackgroundImage:image11 forState:UIControlStateNormal];
    [self.view addSubview:button2];

    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(40, 115, 160, 20)];
    label3.text=@"声音";
    label3.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label3];
    
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame=CGRectMake(275, 115, 20, 20);
    
    [button3 setBackgroundImage:image12 forState:UIControlStateSelected];
    [button3 setBackgroundImage:image11 forState:UIControlStateNormal];
    [self.view addSubview:button3];

    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(40, 165, 160, 20)];
    label4.text=@"振动";
    label4.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label4];
    
    UIButton *button4=[UIButton buttonWithType:UIButtonTypeSystem];
    button4.frame=CGRectMake(275, 165, 20, 20);
    [button4 setBackgroundImage:image12 forState:UIControlStateSelected];
    [button4 setBackgroundImage:image11 forState:UIControlStateNormal];
    [self.view addSubview:button4];

    UILabel *label5=[[UILabel alloc]initWithFrame:CGRectMake(40, 215, 160, 20)];
    label5.text=@"关注更新";
    label5.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label5];
    
    UIButton *button5=[UIButton buttonWithType:UIButtonTypeSystem];
    button5.frame=CGRectMake(275, 215, 20, 20);
        [button5 setBackgroundImage:image12 forState:UIControlStateSelected];
    [button5 setBackgroundImage:image11 forState:UIControlStateNormal];
    [self.view addSubview:button5];

    [button1 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [button3 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [button4 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [button5 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    
    [button1 setTintColor:[UIColor clearColor]];
    [button2 setTintColor:[UIColor clearColor]];
    [button3 setTintColor:[UIColor clearColor]];
    [button4 setTintColor:[UIColor clearColor]];
    [button5 setTintColor:[UIColor clearColor]];
    
}
-(void)Click :(UIButton *)btn
{
    btn.selected=!btn.isSelected;
}

-(void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
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
