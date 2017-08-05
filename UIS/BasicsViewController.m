//
//  BasicsViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "BasicsViewController.h"

@interface BasicsViewController ()

@end

@implementation BasicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"基本资料" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 140, 40);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];

    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];

    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 95, 375, 2)];
    view1.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view1];
    
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(0, 145, 375, 2)];
    view2.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view2];
    
    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(0, 195, 375, 2)];
    view3.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view3];
    
    UIView *view4=[[UIView alloc]initWithFrame:CGRectMake(0, 245, 375, 2)];
    view4.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view4];
    
    UIView *view5=[[UIView alloc]initWithFrame:CGRectMake(0, 295, 375, 2)];
    view5.backgroundColor=[UIColor colorWithRed:0.87f green:0.87f blue:0.87f alpha:1.00f];
    [self.view addSubview:view5];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(35, 35, 49, 20)];
    label1.text=@"头像";
    label1.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label1];
    
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(105, 15, 70, 70)];
    UIImage *image1=[UIImage imageNamed:@"sixin_img1"];
    imageV1.image=image1;
    [self.view addSubview:imageV1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(35, 115, 40, 20)];
    label2.text=@"昵称";
    label2.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label2];
    
    UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(105, 115, 200, 20)];
    label21.text=@"share小白";
    label21.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label21];
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(35, 165, 40, 20)];
    label3.text=@"签名";
    label3.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label3];
    
    UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(105, 165, 200, 20)];
    label31.text=@"开心了就笑，不开心了就过会儿再笑";
    label31.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label31];

    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(55, 215, 40, 20)];
    label4.text=@"性别";
    label4.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label4];
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(105, 215, 15, 15);
    UIImage *image31=[UIImage imageNamed:@"boy_button"];
    image31=[image31 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button1 setImage:image31 forState:UIControlStateNormal];
    [self.view addSubview:button1];
    UILabel *label41=[[UILabel alloc]initWithFrame:CGRectMake(130, 215, 20, 20)];
    label41.text=@"男";
    label41.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label41];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(172, 215, 15, 15);
    UIImage *image41=[UIImage imageNamed:@"girl_button"];
    image41=[image41 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button2 setImage:image41 forState:UIControlStateNormal];
    [self.view addSubview:button2];
    UILabel *label42=[[UILabel alloc]initWithFrame:CGRectMake(197, 215, 20, 20)];
    label42.text=@"女";
    label42.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label42];

    UILabel *label5=[[UILabel alloc]initWithFrame:CGRectMake(35, 265, 40, 20)];
    label5.text=@"邮箱";
    label5.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label5];
    
    
    UILabel *label51=[[UILabel alloc]initWithFrame:CGRectMake(105, 265, 200, 20)];
    label51.text=@"186####3@qq.com";
    label51.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label51];
    
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
