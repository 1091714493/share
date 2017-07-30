//
//  UpLoadViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "UpLoadViewController.h"
#import "DropMenu.h"
#import "PictureViewController.h"
@interface UpLoadViewController ()<UITextViewDelegate>
{
    UITextField *tf1;
    UITextView *textView;
    UILabel *placeHolderLabel;
}

@end

@implementation UpLoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    
    
    self.navigationItem.title=@"上传";
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:0.50f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(10, 15, 210, 120) ;
    
    [button setBackgroundColor:[UIColor colorWithRed:0.84f green:0.83f blue:0.83f alpha:1.00f]];
    [button setTitle:@"选择图片" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [button addTarget:self action:@selector(upLoad ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(243, 43, 20, 20)];
    UIImage *image1=[UIImage imageNamed:@"定位.jpg"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    imageV.image=image1;
    [self.view addSubview:imageV];
    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 setTitle:@"陕西省，西安市" forState:UIControlStateNormal];
    button1.frame=CGRectMake(270, 43, 80, 20);
    [button1.titleLabel setFont:[UIFont systemFontOfSize:10]];
    button1.layer.masksToBounds=YES;
    button1.layer.cornerRadius=10;
    [self.view addSubview:button1];
    
    
    DropMenu *dd1 = [[DropMenu alloc] initWithFrame:CGRectMake(245, 80, 120, 30)];
    dd1.textField.placeholder = @"原创作品";
    NSArray* arr=[[NSArray alloc]initWithObjects:@"设计资料",@"设计师观点",@"设计教程",nil];
    dd1.tableArray = arr;
    [self.view addSubview:dd1];
    
    UIImage *image4=[UIImage imageNamed:@"img12.jpg"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImageView *imageV4=[[UIImageView alloc]initWithFrame:CGRectMake(0, 140, 375, 5)];
    imageV4.image=image4;
    [self.view addSubview: imageV4];
    
    UIButton *button11=[UIButton buttonWithType:UIButtonTypeSystem];
    button11.frame=CGRectMake(10, 160, 81.25, 30) ;
    [button11 setTitle:@"平面设计" forState:UIControlStateNormal];
    [button11 setBackgroundColor:[UIColor whiteColor]];
    [button11 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    button11.layer.masksToBounds=YES;
    button11.layer.cornerRadius=3;
    [button11 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    
    
    UIButton *button12=[UIButton buttonWithType:UIButtonTypeSystem];
    button12.frame=CGRectMake(101.25, 160, 81.25, 30) ;
    [button12 setTitle:@"网页设计" forState:UIControlStateNormal];
    [button12 setBackgroundColor:[UIColor whiteColor]];
    [button12 setTintColor:[UIColor blackColor]];
    button12.layer.masksToBounds=YES;
    button12.layer.cornerRadius=3;
    [self.view addSubview:button12];
    
    UIButton *button13=[UIButton buttonWithType:UIButtonTypeSystem];
    button13.frame=CGRectMake(192.5, 160, 81.25, 30) ;
    [button13 setTitle:@"UI/icon" forState:UIControlStateNormal];
    [button13 setBackgroundColor:[UIColor whiteColor]];
    [button13 setTintColor:[UIColor blackColor]];
    button13.layer.masksToBounds=YES;
    button13.layer.cornerRadius=3;
    [self.view addSubview:button13];
    
    UIButton *button14=[UIButton buttonWithType:UIButtonTypeSystem];
    button14.frame=CGRectMake(283.75, 160, 81.25, 30) ;
    [button14 setTitle:@"插画／手绘" forState:UIControlStateNormal];
    [button14 setBackgroundColor:[UIColor whiteColor]];
    [button14 setTintColor:[UIColor blackColor]];
    button14.layer.masksToBounds=YES;
    button14.layer.cornerRadius=3;
    [self.view addSubview:button14];
    
    UIButton *button15=[UIButton buttonWithType:UIButtonTypeSystem];
    button15.frame=CGRectMake(10, 200, 98, 30) ;
    [button15 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    [button15 setBackgroundColor:[UIColor whiteColor]];
    [button15 setTintColor:[UIColor blackColor]];
    button15.layer.masksToBounds=YES;
    button15.layer.cornerRadius=3;
    [self.view addSubview:button15];
    
    UIButton *button16=[UIButton buttonWithType:UIButtonTypeSystem];
    button16.frame=CGRectMake(118, 200, 75, 30) ;
    [button16 setTitle:@"影视" forState:UIControlStateNormal];
    [button16 setBackgroundColor:[UIColor whiteColor]];
    [button16 setTintColor:[UIColor blackColor]];
    button16.layer.masksToBounds=YES;
    button16.layer.cornerRadius=3;
    [self.view addSubview:button16];
    
    UIButton *button17=[UIButton buttonWithType:UIButtonTypeSystem];
    button17.frame=CGRectMake(203, 200, 75, 30) ;
    [button17 setTitle:@"摄影" forState:UIControlStateNormal];
    [button17 setBackgroundColor:[UIColor whiteColor]];
    [button17 setTintColor:[UIColor blackColor]];
    button17.layer.masksToBounds=YES;
    button17.layer.cornerRadius=3;
    [self.view addSubview:button17];
    
    UIButton *button18=[UIButton buttonWithType:UIButtonTypeSystem];
    button18.frame=CGRectMake(375-10-75, 200, 75, 30) ;
    [button18 setTitle:@"其它" forState:UIControlStateNormal];
    [button18 setBackgroundColor:[UIColor whiteColor]];
    [button18 setTintColor:[UIColor blackColor]];
    button18.layer.masksToBounds=YES;
    button18.layer.cornerRadius=3;
    [self.view addSubview:button18];
    
    [button12 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    [button13 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    [button14 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    [button15 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    [button16 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    [button17 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    [button18 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button11];
    
    tf1=[[UITextField alloc]initWithFrame:CGRectMake(0, 245, 375, 28)];
    tf1.backgroundColor=[UIColor whiteColor];
    tf1.placeholder=@"作品名称";
    [self.view addSubview:tf1];
    
    textView =[[UITextView alloc]initWithFrame:CGRectMake(0, 280, 375, 90)];
    textView.backgroundColor=[UIColor whiteColor];
    placeHolderLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, -20, 365, 60)];
    placeHolderLabel.numberOfLines=0;
    placeHolderLabel.text=@"请添加作品说明／文章内容......";
    placeHolderLabel.textColor=[UIColor colorWithRed:0.84f green:0.83f blue:0.83f alpha:1.00f];
    placeHolderLabel.backgroundColor=[UIColor clearColor];
    [self.view addSubview:textView];
    [textView addSubview:placeHolderLabel];
    textView.delegate=self;
    
    UIButton *button4=[UIButton buttonWithType:UIButtonTypeSystem];
    button4.frame=CGRectMake(10, 385, 355, 50) ;
    button4.backgroundColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f];
    [button4 setTitle:@"发布" forState:UIControlStateNormal];
    [button4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button4.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [self.view addSubview:button4];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(25, 445, 50, 13)];
    label2.text=@"禁止下载";
    
    label2.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:label2];
    
    UIImage *image8=[UIImage imageNamed:@"checkbox_unchecked"];
    image8=[image8 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIButton *button3=[UIButton  buttonWithType:UIButtonTypeSystem];
    [button3 setBackgroundColor:[UIColor clearColor]];
    button3.frame=CGRectMake(10, 445, 12, 12);
    button3.layer.masksToBounds=YES;
    [button3 setTintColor:[UIColor whiteColor]];
    [button3 setBackgroundImage:[UIImage imageNamed:@"checkbox_checked"] forState:UIControlStateSelected];
    button3.imageView.contentMode=UIViewContentModeCenter;
    [button3 setBackgroundImage:image8 forState:UIControlStateNormal];
    button3.layer.borderWidth=2;
    button3.layer.borderColor=[UIColor colorWithRed:0.04f green:0.38f blue:0.62f alpha:1.00f].CGColor;
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(button3BtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapME :)];
    tap.cancelsTouchesInView=NO;
    [self.view addGestureRecognizer:tap];

}-(void)button3BtnClick:(UIButton *)button
{
    button.selected=!button.isSelected;
}


-(void)textViewDidChange:(UITextView*)text

{
    if([text.text length] == 0){
        
        placeHolderLabel.text = @"请添加作品说明／文章内容......";
        
    }else{
        
        placeHolderLabel.text = @"";
        
    }
}

-(void)Click:(UIButton *)btn
{
    if ([btn isSelected])
    {
        [btn setBackgroundColor:[UIColor whiteColor]];
        [btn  setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    else{
        [btn setTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f]];
        [btn setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f]];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    btn.selected=!btn.isSelected;
    
    
    
}
-(void)tapME:(UITapGestureRecognizer *)tap
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
-(void)upLoad
{
    PictureViewController *pic=[[PictureViewController alloc]init];
    pic.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pic animated:NO];
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
