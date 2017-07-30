//
//  VacaViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "VacaViewController.h"

@interface VacaViewController ()

@end

@implementation VacaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.navigationItem.title=@"SHARE";
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:0.50f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 375, 667-64)];
    [self.view addSubview:sv];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 1120)];
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(10, 15, 45, 45)];
    imageV.image=[UIImage imageNamed:@"sixin_img1"];
    [view addSubview:imageV];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(70, 15, 60, 25)];
    label1.text=@"假日";
    label1.font=[UIFont systemFontOfSize:22];
    [view addSubview:label1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(70, 45,100, 20)];
    label2.text=@"share小白";
    label2.font=[UIFont systemFontOfSize:17];
    [view addSubview:label2];
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame=CGRectMake(215, 45, 15, 15) ;
    UIImage *image1=[UIImage imageNamed:@"button_zan"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
    [view addSubview:btn1];
    
    UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(232, 45, 25, 15)];
    label11.text=@"102";
    label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    label11.font=[UIFont systemFontOfSize:12];
    [view addSubview:label11];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame=CGRectMake(270, 45, 15, 15) ;
    UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
    [view addSubview:btn2];
    
    UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(287, 45, 25, 15)];
    label21.text=@"26";
    label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    label21.font=[UIFont systemFontOfSize:12];
    [view addSubview:label21];
    
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame=CGRectMake(325, 45, 15, 15) ;
    UIImage *image3=[UIImage imageNamed:@"button_share"];
    image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
    [view addSubview:btn3];
    
    UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(342, 45, 25, 15)];
    label31.text=@"20";
    label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    label31.font=[UIFont systemFontOfSize:12];
    [view addSubview:label31];
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(315, 15, 50, 20)];
    label3.text=@"15分钟前";
    label3.textColor=[UIColor colorWithRed:0.44f green:0.44f blue:0.44f alpha:1.00f];
    label3.font=[UIFont systemFontOfSize:10];
    [view addSubview:label3];
    
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 75, 375, 1)];
    view1.backgroundColor=[UIColor colorWithRed:0.95f green:0.95f blue:0.95f alpha:1.00f];
    [view addSubview: view1];
    
    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(10, 85, 200, 20)];
    label4.text=@"多希望列车能把我带到有你的城市。";
    label4.font=[UIFont systemFontOfSize:12];
    [view addSubview:label4];
    
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(10, 110, 355, 200)];
    imageV1.image=[UIImage imageNamed:@"works_img1"];
    [sv addSubview:imageV1];
    
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(10, 320, 355, 200)];
    imageV2.image=[UIImage imageNamed:@"works_img2"];
    [sv addSubview:imageV2];
    
    UIImageView *imageV3=[[UIImageView alloc]initWithFrame:CGRectMake(90, 530, 200, 300)];
    imageV3.image=[UIImage imageNamed:@"works_img3"];
    [sv addSubview:imageV3];
    
    
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(90, 840, 200, 300)];
    imageV4.image=[UIImage imageNamed:@"works_img5"];
    [sv addSubview:imageV4];
    sv.contentSize = view.bounds.size;
    sv.bounces=NO;
    sv.showsVerticalScrollIndicator=NO;
    [sv addSubview:view];

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
