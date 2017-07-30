//
//  MainViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "MainViewController.h"
#import "SerViewController.h"
#import "TextViewController.h"
#import "ActViewController.h"
#import "InforViewController.h"
#import "VacaViewController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate>
{
    UITableView *tab;
    UIScrollView *sv;
    UIPageControl *pControl;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"SHARE";
    self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:0.50f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 667-64-48) style:UITableViewStylePlain];
    [self.view addSubview:tab];
    
    tab.delegate=self;
    tab.dataSource=self;
    
    tab.showsVerticalScrollIndicator=NO;
    sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 10, 355, 175)];
    sv.backgroundColor=[UIColor whiteColor];
    sv.contentSize=CGSizeMake(355*4, 175);
    for(int i=1;i<=4;i++)
    {
        NSString *name=[NSString stringWithFormat:@"main_img%d",i];
        UIImage *image=[UIImage imageNamed:name];
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(355*(i-1), 0, 355, 175)];
        imageV.image=image;
        [sv addSubview:imageV];
        sv.delegate=self;
    }
    
    pControl=[[UIPageControl alloc]initWithFrame:CGRectMake(10, 165, 355, 10)];
    pControl.numberOfPages=4;
    pControl.currentPageIndicatorTintColor=[UIColor colorWithRed:0.12f green:0.27f blue:0.41f alpha:1.00f];
    pControl.pageIndicatorTintColor=[UIColor colorWithRed:0.36f green:0.41f blue:0.47f alpha:1.00f];
    [pControl addTarget:self action:@selector(PageCon:) forControlEvents:UIControlEventValueChanged];
    

}

-(void)PageCon:(UIPageControl *)page
{
    [sv setContentOffset:CGPointMake(355*page.currentPage, 0) animated:YES];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section==0)
        return 175;
    return 125;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if(section==0) return 0;
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
        [cell.contentView addSubview:sv];
        [cell.contentView addSubview:pControl];
    }
    else if(indexPath.section==1)
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
    else if(indexPath.section==2)
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
    else if(indexPath.section==3)
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
    if(indexPath.section==4)
    {
        UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 355, 125)];
        UIImage * image=[UIImage imageNamed:@"list_img4"];
        imageV.image=image;
        [cell.contentView addSubview:imageV];
        
    }
    return cell;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger num=scrollView.contentOffset.x/355;
    pControl.currentPage=num;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if([tab indexPathForSelectedRow].section==1)
    {
        NSLog(@"你点了第%ld行",indexPath.row+1);
        VacaViewController *vac=[[VacaViewController alloc]init];
        vac.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vac animated:NO];
    }
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
