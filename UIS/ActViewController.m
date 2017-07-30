//
//  ActViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "ActViewController.h"
#import "MainViewController.h"
@interface ActViewController ()

@end

@implementation ActViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"活动";
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(10, 10, 355, 667-64)];
    [self.view addSubview:sv];
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 355, 177)];
    imageV.image=[UIImage imageNamed:@"1.jpg"];
    [sv addSubview:imageV];
    
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake( 10, 197, 355, 177)];
    imageV1.image=[UIImage imageNamed:@"2.jpg"];
    [sv addSubview:imageV1];
    
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(10, 384, 355, 667-64-384-48)];
    imageV2.image=[UIImage imageNamed:@"3.jpg"];
    [sv addSubview:imageV2];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 355, 667)];
    sv.contentSize = view.bounds.size;
    sv.bounces=NO;
    sv.showsVerticalScrollIndicator=NO;
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
