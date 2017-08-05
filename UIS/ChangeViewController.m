//
//  ChangeViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "ChangeViewController.h"

@interface ChangeViewController ()

@end

@implementation ChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"修改密码" forState:UIControlStateNormal];
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
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(35, 15, 70, 20)];
    label1.text=@"旧密码";
    label1.font=[UIFont systemFontOfSize:18];
    [self.view addSubview:label1];
    
    UITextField *tf1=[[UITextField alloc]initWithFrame:CGRectMake(135, 15, 200, 25)];
    tf1.placeholder=@"6-20英文或数字结合";
    [self.view addSubview:tf1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(35, 65, 70, 20)];
    label2.text=@"新密码";
    label2.font=[UIFont systemFontOfSize:18];
    [self.view addSubview:label2];
    
    UITextField *tf2=[[UITextField alloc]initWithFrame:CGRectMake(135, 65, 200, 25)];
    tf2.placeholder=@"6-20英文或数字结合";
    [self.view addSubview:tf2];
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(35, 115, 80, 20)];
    label3.text=@"确认密码";
    label3.font=[UIFont systemFontOfSize:18];
    [self.view addSubview:label3];
    
    UITextField *tf3=[[UITextField alloc]initWithFrame:CGRectMake(135, 115, 200, 25)];
    tf3.placeholder=@"请再次确认输入密码";
    [self.view addSubview:tf3];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(150, 200, 73, 30);
    [button setBackgroundColor:[UIColor blackColor] ];
    [button setTitle:@"提交" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.layer.masksToBounds=YES;
    button.layer.cornerRadius=3;
    [self.view addSubview:button];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapMe:)];
    tap.cancelsTouchesInView=NO;
    [self.view addGestureRecognizer:tap];
    
}

-(void)tapMe:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
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
