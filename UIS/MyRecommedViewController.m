//
//  MyRecommedViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "MyRecommedViewController.h"

@interface MyRecommedViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tab;
    NSArray *array;
}

@end

@implementation MyRecommedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"我推荐的" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 140, 40);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    

    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 667-64) style:UITableViewStylePlain];
    [self.view addSubview: tab];
    tab.showsVerticalScrollIndicator=NO;
    tab.delegate=self;
    tab.dataSource=self;
    
    array=[NSArray arrayWithObjects:@"list_img1",@"list_img2",@"list_img3",@"note_img3",@"list_img4", nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 125;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc]init];
    view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    return view;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    while ([cell.contentView.subviews lastObject] != nil)
    {
        [(UIView*)[cell.contentView.subviews lastObject] removeFromSuperview];
    }
 if(indexPath.section==0)
    {
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 165, 125)];
        UIImage *image=[UIImage imageNamed:@"list_img1"];
        imageV.image=image;
        [cell.contentView addSubview:imageV];
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(190, 15, 35, 20)];
        label1.text=@"假日";
        label1.font=[UIFont systemFontOfSize:17];
        [cell.contentView addSubview:label1];
        UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(270, 20, 70, 12)];
        label2.text=@"share小白";
        label2.font=[UIFont systemFontOfSize:13];
        
        [cell.contentView addSubview:label2];
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(190, 45, 105, 10)];
        label3.text=@"原创-插画-练习写作";
        
        label3.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label3];
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(190, 60, 45, 10)];
        label4.text=@"15分钟前";
        label4.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label4];
        
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame=CGRectMake(190, 90, 15, 15) ;
        UIImage *image1=[UIImage imageNamed:@"button_zan"];
        image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn1];
        
        UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(207, 90, 25, 15)];
        label11.text=@"102";
        label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label11.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label11];
        
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame=CGRectMake(245, 90, 15, 15) ;
        UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
        image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn2];
        
        UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(262, 90, 25, 15)];
        label21.text=@"26";
        label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label21.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label21];
        
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame=CGRectMake(300, 90, 15, 15) ;
        UIImage *image3=[UIImage imageNamed:@"button_share"];
        image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn3];
        
        UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(317, 90, 25, 15)];
        label31.text=@"20";
        label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label31.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label31];
    }
   if(indexPath.section==1)
    {
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 165, 125)];
        UIImage *image=[UIImage imageNamed:@"list_img2"];
        imageV.image=image;
        [cell.contentView addSubview:imageV];
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(190, 15, 120, 20)];
        label1.text=@"国外画册欣赏";
        label1.font=[UIFont systemFontOfSize:17];
        [cell.contentView addSubview:label1];
        
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(190, 35, 105, 15)];
        label3.text=@"share小王";
        label3.font=[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:label3];
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(190, 55, 180, 10)];
        label4.text=@"平面设计-画册设计";
        label4.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label4];
        
        UILabel *label5=[[UILabel alloc]initWithFrame:CGRectMake(190, 70, 100, 10)];
        label5.text=@"16分钟前";
        label5.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label5];
        
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame=CGRectMake(190, 90, 15, 15) ;
        UIImage *image1=[UIImage imageNamed:@"button_zan"];
        image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn1];
        
        UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(207, 90, 25, 15)];
        label11.text=@"102";
        label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label11.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label11];
        
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame=CGRectMake(245, 90, 15, 15) ;
        UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
        image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn2];
        
        UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(262, 90, 25, 15)];
        label21.text=@"26";
        label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label21.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label21];
        
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame=CGRectMake(300, 90, 15, 15) ;
        UIImage *image3=[UIImage imageNamed:@"button_share"];
        image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn3];
        
        UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(317, 90, 25, 15)];
        label31.text=@"20";
        label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label31.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label31];
    }
     if(indexPath.section==2)
    {
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 165, 125)];
        UIImage *image=[UIImage imageNamed:@"list_img3"];
        imageV.image=image;
        [cell.contentView addSubview:imageV];
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(190, 15, 160, 20)];
        label1.text=@"collection扁平设计";
        label1.font=[UIFont systemFontOfSize:17];
        [cell.contentView addSubview:label1];
        
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(190, 35, 105, 15)];
        label3.text=@"share小吕";
        label3.font=[UIFont systemFontOfSize:13];
        [cell.contentView addSubview:label3];
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(190, 55, 180, 10)];
        label4.text=@"平面设计-海报设计";
        label4.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label4];
        
        UILabel *label5=[[UILabel alloc]initWithFrame:CGRectMake(190, 70, 100, 10)];
        label5.text=@"17分钟前";
        label5.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label5];
        
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame=CGRectMake(190, 90, 15, 15) ;
        UIImage *image1=[UIImage imageNamed:@"button_zan"];
        image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn1];
        
        UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(207, 90, 25, 15)];
        label11.text=@"102";
        label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label11.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label11];
        
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame=CGRectMake(245, 90, 15, 15) ;
        UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
        image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn2];
        
        UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(262, 90, 25, 15)];
        label21.text=@"26";
        label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label21.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label21];
        
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame=CGRectMake(300, 90, 15, 15) ;
        UIImage *image3=[UIImage imageNamed:@"button_share"];
        image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn3];
        
        UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(317, 90, 25, 15)];
        label31.text=@"20";
        label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label31.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label31];
    }
    if(indexPath.section==3)
    {
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 165, 125)];
        UIImage *image=[UIImage imageNamed:@"note_img3"];
        imageV.image=image;
        [cell.contentView addSubview:imageV];
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(190, 15, 70, 20)];
        label1.text=@"字体故事";
        label1.font=[UIFont systemFontOfSize:17];
        [cell.contentView addSubview:label1];
        UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(270, 20, 70, 12)];
        label2.text=@"share小律";
        label2.font=[UIFont systemFontOfSize:13];
        
        [cell.contentView addSubview:label2];
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(190, 45, 165, 10)];
        label3.text=@"设计文章-经验-设计观点";
        
        label3.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label3];
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(190, 60, 45, 10)];
        label4.text=@"45分钟前";
        label4.font=[UIFont systemFontOfSize:10];
        [cell.contentView addSubview:label4];
        
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame=CGRectMake(190, 90, 15, 15) ;
        UIImage *image1=[UIImage imageNamed:@"button_zan"];
        image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn1];
        
        UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(207, 90, 25, 15)];
        label11.text=@"45";
        label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label11.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label11];
        
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame=CGRectMake(245, 90, 15, 15) ;
        UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
        image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn2];
        
        UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(262, 90, 35, 15)];
        label21.text=@"105";
        label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label21.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label21];
        
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame=CGRectMake(300, 90, 15, 15) ;
        UIImage *image3=[UIImage imageNamed:@"button_share"];
        image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn3];
        
        UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(317, 90, 25, 15)];
        label31.text=@"20";
        label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label31.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label31];
    }
    if(indexPath.section==4)
    {
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 165, 125)];
        UIImage *image=[UIImage imageNamed:@"note_img4"];
        imageV.image=image;
        [cell.contentView addSubview:imageV];
        
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame=CGRectMake(190, 90, 15, 15) ;
        UIImage *image1=[UIImage imageNamed:@"button_zan"];
        image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn1];
        
        UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(207, 90, 25, 15)];
        label11.text=@"102";
        label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label11.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label11];
        
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame=CGRectMake(245, 90, 15, 15) ;
        UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
        image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn2];
        
        UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(262, 90, 25, 15)];
        label21.text=@"26";
        label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label21.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label21];
        
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame=CGRectMake(300, 90, 15, 15) ;
        UIImage *image3=[UIImage imageNamed:@"button_share"];
        image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
        [cell.contentView addSubview:btn3];
        
        UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(317, 90, 25, 15)];
        label31.text=@"20";
        label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
        label31.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label31];
        
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(180, 15, 180, 20)];
        label1.text=@"板式整理术：高效解决";
        label1.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:label1];
        
        UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(180, 35, 90, 20)];
        label2.text=@"多风格要求";
        label2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:label2];
        
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(276, 40, 80 ,15)];
        label3.text=@"share小王";
        label3.textColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
        label3.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label3];
        
        UILabel *lable5=[[UILabel alloc]initWithFrame:CGRectMake(180, 60, 140,15)];
        lable5.text=@"设计文章-经验-案例分析";
        lable5.textColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
        lable5.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:lable5];
        
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(180, 75, 100, 15)];
        label4.textColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
        label4.text=@"4小时前";
        label4.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label4];
        
    }
    return cell;
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
