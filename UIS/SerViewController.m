//
//  SerViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "SerViewController.h"
#import "UpLoadViewController.h"
#import "PictureViewController.h"

@interface SerViewController ()

@end

@implementation SerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"搜索";
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    UIImage *image1=[UIImage imageNamed:@"radio_button_note"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(upLoad)];
    
    UISearchBar *se=[[UISearchBar alloc]initWithFrame:CGRectMake(10, 10, 355, 50)];
    [self.view addSubview:se];
    se.placeholder=@"搜索 用户名 作品分类 文章";
    se.barTintColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    se.layer.borderWidth = 1;
    
    se.layer.borderColor =[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f].CGColor;
    //    se.showsScopeBar=YES;
    //    se.scopeButtonTitles=@[@"30分钟前",@"1小时前",@"1月前",@"1年前"];
    
    
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(
                                                                      10, 70, 75, 25)];
    imageV1.image=[UIImage imageNamed:@"but1"];
    [self.view addSubview:imageV1];
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(14, 72, 22, 22)];
    imageV2.image=[UIImage imageNamed:@"search_button1"];
    [self.view addSubview:imageV2];
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(40, 70, 50, 25)];
    label1.text=@"分类";
    label1.textColor=[UIColor whiteColor];
    label1.font=[UIFont systemFontOfSize:18];
    [self.view addSubview:label1];
    
    UIImageView *imageV3=[[UIImageView alloc]initWithFrame:CGRectMake(10, 95, 355, 3)
                          ];
    imageV3.image=[UIImage imageNamed:@"background_main"];
    [self.view addSubview:imageV3];
    
    UIButton *button11=[UIButton buttonWithType:UIButtonTypeSystem];
    button11.frame=CGRectMake(10, 110, 81.25, 30) ;
    [button11 setTitle:@"平面设计" forState:UIControlStateNormal];
    [button11 setBackgroundColor:[UIColor whiteColor]];
    [button11 setTintColor:[UIColor blackColor]];
    button11.layer.masksToBounds=YES;
    button11.layer.cornerRadius=3;
    [self.view addSubview:button11];
    
    UIButton *button12=[UIButton buttonWithType:UIButtonTypeSystem];
    button12.frame=CGRectMake(101.25, 110, 81.25, 30) ;
    [button12 setTitle:@"网页设计" forState:UIControlStateNormal];
    [button12 setBackgroundColor:[UIColor whiteColor]];
    [button12 setTintColor:[UIColor blackColor]];
    button12.layer.masksToBounds=YES;
    button12.layer.cornerRadius=3;
    [self.view addSubview:button12];
    
    UIButton *button13=[UIButton buttonWithType:UIButtonTypeSystem];
    button13.frame=CGRectMake(192.5, 110, 81.25, 30) ;
    [button13 setTitle:@"UI/icon" forState:UIControlStateNormal];
    [button13 setBackgroundColor:[UIColor whiteColor]];
    [button13 setTintColor:[UIColor blackColor]];
    button13.layer.masksToBounds=YES;
    button13.layer.cornerRadius=3;
    [self.view addSubview:button13];
    
    UIButton *button14=[UIButton buttonWithType:UIButtonTypeSystem];
    button14.frame=CGRectMake(283.75, 110, 81.25, 30) ;
    [button14 setTitle:@"插画／手绘" forState:UIControlStateNormal];
    [button14 setBackgroundColor:[UIColor whiteColor]];
    [button14 setTintColor:[UIColor blackColor]];
    button14.layer.masksToBounds=YES;
    button14.layer.cornerRadius=3;
    [self.view addSubview:button14];
    
    UIButton *button15=[UIButton buttonWithType:UIButtonTypeSystem];
    button15.frame=CGRectMake(10, 150, 98, 30) ;
    [button15 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    [button15 setBackgroundColor:[UIColor whiteColor]];
    [button15 setTintColor:[UIColor blackColor]];
    button15.layer.masksToBounds=YES;
    button15.layer.cornerRadius=3;
    [self.view addSubview:button15];
    
    UIButton *button16=[UIButton buttonWithType:UIButtonTypeSystem];
    button16.frame=CGRectMake(118, 150, 75, 30) ;
    [button16 setTitle:@"影视" forState:UIControlStateNormal];
    [button16 setBackgroundColor:[UIColor whiteColor]];
    [button16 setTintColor:[UIColor blackColor]];
    button16.layer.masksToBounds=YES;
    button16.layer.cornerRadius=3;
    [self.view addSubview:button16];
    
    UIButton *button17=[UIButton buttonWithType:UIButtonTypeSystem];
    button17.frame=CGRectMake(203, 150, 75, 30) ;
    [button17 setTitle:@"摄影" forState:UIControlStateNormal];
    [button17 setBackgroundColor:[UIColor whiteColor]];
    [button17 setTintColor:[UIColor blackColor]];
    button17.layer.masksToBounds=YES;
    button17.layer.cornerRadius=3;
    [self.view addSubview:button17];
    
    UIButton *button18=[UIButton buttonWithType:UIButtonTypeSystem];
    button18.frame=CGRectMake(375-10-75, 150, 75, 30) ;
    [button18 setTitle:@"其它" forState:UIControlStateNormal];
    [button18 setBackgroundColor:[UIColor whiteColor]];
    [button18 setTintColor:[UIColor blackColor]];
    button18.layer.masksToBounds=YES;
    button18.layer.cornerRadius=3;
    [self.view addSubview:button18];
    
    [button11 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    [button11 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button11.tag=1;
    [button12 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    [button12 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button12.tag=2;
    [button13 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    [button13 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button13.tag=3;
    [button14 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    [button14 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button14.tag=4;
    [button15 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    [button15 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button15.tag=5;
    [button16 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    button16.tag=6;
    [button16 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [button17 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    button17.tag=7;
    [button17 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [button18 addTarget:self action:@selector(Click1 :) forControlEvents:UIControlEventTouchUpInside];
    button18.tag=8;
    [button18 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
   
    
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(
                                                                      10, 200, 75, 25)];
    imageV4.image=[UIImage imageNamed:@"but1"];
    [self.view addSubview:imageV4];
    UIImageView *imageV5=[[UIImageView alloc]initWithFrame:CGRectMake(14, 202, 22, 22)];
    imageV5.image=[UIImage imageNamed:@"search_button1"];
    [self.view addSubview:imageV5];
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(40, 200, 50, 25)];
    label2.text=@"推荐";
    label2.textColor=[UIColor whiteColor];
    label2.font=[UIFont systemFontOfSize:18];
    [self.view addSubview:label2];
    
    UIImageView *imageV6=[[UIImageView alloc]initWithFrame:CGRectMake(10, 225, 355, 3)
                          ];
    imageV6.image=[UIImage imageNamed:@"background_main"];
    [self.view addSubview:imageV6];
    
    UIButton *button21=[UIButton buttonWithType:UIButtonTypeSystem];
    button21.frame=CGRectMake(10, 240, 81.25, 30) ;
    [button21 setTitle:@"人气最高" forState:UIControlStateNormal];
    [button21 setBackgroundColor:[UIColor whiteColor]];
    [button21 setTintColor:[UIColor blackColor]];
    button21.layer.masksToBounds=YES;
    button21.layer.cornerRadius=3;
    [self.view addSubview:button21];
    
    UIButton *button22=[UIButton buttonWithType:UIButtonTypeSystem];
    button22.frame=CGRectMake(101.25, 240, 81.25, 30) ;
    [button22 setTitle:@"收藏最多" forState:UIControlStateNormal];
    [button22 setBackgroundColor:[UIColor whiteColor]];
    [button22 setTintColor:[UIColor blackColor]];
    button22.layer.masksToBounds=YES;
    button22.layer.cornerRadius=3;
    [self.view addSubview:button22];
    
    UIButton *button23=[UIButton buttonWithType:UIButtonTypeSystem];
    button23.frame=CGRectMake(192.5, 240, 81.25, 30) ;
    [button23 setTitle:@"评论最多" forState:UIControlStateNormal];
    [button23 setBackgroundColor:[UIColor whiteColor]];
    [button23 setTintColor:[UIColor blackColor]];
    button23.layer.masksToBounds=YES;
    button23.layer.cornerRadius=3;
    [self.view addSubview:button23];
    
    UIButton *button24=[UIButton buttonWithType:UIButtonTypeSystem];
    button24.frame=CGRectMake(283.75, 240, 81.25, 30) ;
    [button24 setTitle:@"编辑精选" forState:UIControlStateNormal];
    [button24 setBackgroundColor:[UIColor whiteColor]];
    [button24 setTintColor:[UIColor blackColor]];
    button24.layer.masksToBounds=YES;
    button24.layer.cornerRadius=3;
    [self.view addSubview:button24];
    
    UIImageView *imageV7=[[UIImageView alloc]initWithFrame:CGRectMake(
                                                                      10, 290, 75, 25)];
    imageV7.image=[UIImage imageNamed:@"but1"];
    [self.view addSubview:imageV7];
    UIImageView *imageV8=[[UIImageView alloc]initWithFrame:CGRectMake(14, 292, 22, 22)];
    imageV8.image=[UIImage imageNamed:@"search_button1"];
    [self.view addSubview:imageV8];
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(40, 290, 50, 25)];
    label3.text=@"时间";
    label3.textColor=[UIColor whiteColor];
    label3.font=[UIFont systemFontOfSize:18];
    [self.view addSubview:label3];
    
    UIImageView *imageV9=[[UIImageView alloc]initWithFrame:CGRectMake(10, 315, 355, 3)
                          ];
    imageV9.image=[UIImage imageNamed:@"background_main"];
    [self.view addSubview:imageV9];
    
    UIButton *button31=[UIButton buttonWithType:UIButtonTypeSystem];
    button31.frame=CGRectMake(10, 330, 81.25, 30) ;
    [button31 setTitle:@"30分钟前" forState:UIControlStateNormal];
    [button31 setBackgroundColor:[UIColor whiteColor]];
    [button31 setTintColor:[UIColor blackColor]];
    button31.layer.masksToBounds=YES;
    button31.layer.cornerRadius=3;
    [self.view addSubview:button31];
    
    UIButton *button32=[UIButton buttonWithType:UIButtonTypeSystem];
    button32.frame=CGRectMake(101.25, 330, 81.25, 30) ;
    [button32 setTitle:@"1小时前" forState:UIControlStateNormal];
    [button32 setBackgroundColor:[UIColor whiteColor]];
    [button32 setTintColor:[UIColor blackColor]];
    button32.layer.masksToBounds=YES;
    button32.layer.cornerRadius=3;
    [self.view addSubview:button32];
    
    UIButton *button33=[UIButton buttonWithType:UIButtonTypeSystem];
    button33.frame=CGRectMake(192.5, 330, 81.25, 30) ;
    [button33 setTitle:@"1月前" forState:UIControlStateNormal];
    [button33 setBackgroundColor:[UIColor whiteColor]];
    [button33 setTintColor:[UIColor blackColor]];
    button33.layer.masksToBounds=YES;
    button33.layer.cornerRadius=3;
    [self.view addSubview:button33];
    
    UIButton *button34=[UIButton buttonWithType:UIButtonTypeSystem];
    button34.frame=CGRectMake(283.75, 330, 81.25, 30) ;
    [button34 setTitle:@"1年前" forState:UIControlStateNormal];
    [button34 setBackgroundColor:[UIColor whiteColor]];
    [button34 setTintColor:[UIColor blackColor]];
    button34.layer.masksToBounds=YES;
    button34.layer.cornerRadius=3;
    [self.view addSubview:button34];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapME :)];
    tap.cancelsTouchesInView=NO;
    [self.view addGestureRecognizer:tap];
    
    [button21 addTarget:self action:@selector(Click2 :) forControlEvents:UIControlEventTouchUpInside];
    [button21 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button21.tag=21;
    [button22 addTarget:self action:@selector(Click2 :) forControlEvents:UIControlEventTouchUpInside];
    [button22 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button22.tag=22;

    [button23 addTarget:self action:@selector(Click2 :) forControlEvents:UIControlEventTouchUpInside];
    [button23 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button23.tag=23;

    [button24 addTarget:self action:@selector(Click2 :) forControlEvents:UIControlEventTouchUpInside];
    [button24 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button24.tag=24;

    [button31 addTarget:self action:@selector(Click3 :) forControlEvents:UIControlEventTouchUpInside];
    [button31 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button31.tag=31;
    [button32 addTarget:self action:@selector(Click3 :) forControlEvents:UIControlEventTouchUpInside];
    [button32 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button32.tag=32;
    
    [button33 addTarget:self action:@selector(Click3 :) forControlEvents:UIControlEventTouchUpInside];
    [button33 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button33.tag=33;
    
    [button34 addTarget:self action:@selector(Click3 :) forControlEvents:UIControlEventTouchUpInside];
    [button34 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    button34.tag=34;

}


-(void)tapME:(UITapGestureRecognizer *)tap
{
    [self.view endEditing:YES];
}

-(void)Click1 :(UIButton *)btn
{
    for(int i=1;i<9;i++)
    {
        if(btn.tag==i){
            btn.selected=YES;
            [btn setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
            [btn setTintColor:[UIColor clearColor]];
            continue;
        }
        UIButton *but =(UIButton *)[self.view viewWithTag:i];
        [but setBackgroundColor:[UIColor whiteColor]];
        [but setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        but.selected=NO;
    }
}
-(void)Click2 :(UIButton *)btn
{
    for(int i=21;i<25;i++)
    {
        if(btn.tag==i){
            btn.selected=YES;
            [btn setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
            [btn setTintColor:[UIColor clearColor]];
            continue;
        }
        UIButton *but =(UIButton *)[self.view viewWithTag:i];
        [but setBackgroundColor:[UIColor whiteColor]];
        [but setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        but.selected=NO;
    }
}

-(void)Click3 :(UIButton *)btn
{
    for(int i=31;i<35;i++)
    {
        if(btn.tag==i){
            btn.selected=YES;
            [btn setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
            [btn setTintColor:[UIColor clearColor]];
            continue;
        }
        UIButton *but =(UIButton *)[self.view viewWithTag:i];
        [but setBackgroundColor:[UIColor whiteColor]];
        [but setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        but.selected=NO;
    }
}

-(void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)upLoad
{
    UpLoadViewController *upLoad=[[UpLoadViewController alloc]init];
    upLoad.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:upLoad animated:NO];
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
