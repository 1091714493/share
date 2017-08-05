//
//  InforViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "InforViewController.h"
#import "MyUploadViewController.h"
#import "MyInforViewController.h"
#import "PersonalLetterViewController.h"
#import "NewAttentionViewController.h"
#import "MyRecommedViewController.h"
#import "SettingViewController.h"
#import "BasicsViewController.h"
#import "ChangeViewController.h"
#import "MessageViewController.h"
@interface InforViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tab;
    NSArray *array1;
    NSArray *array2;
}

@end

@implementation InforViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"个人信息";
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImage *image1=[UIImage imageNamed:@"sixin_img1"];
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(35, 20, 100, 100)];
    imageV1.image=image1;
    [self.view addSubview:imageV1];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(155, 25, 100, 20)];
    label1.text=@"share小白";
    label1.font=[UIFont systemFontOfSize:20];
    [self.view addSubview:label1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(155, 50, 100, 12)];
    label2.text=@"数媒／设计爱好者";
    label2.font=[UIFont systemFontOfSize:11];
    [self.view addSubview:label2];
    
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(155, 75, 210, 17)];
    label3.text=@"开心了就笑，不开心了就过会儿再笑";
    label3.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:label3];

    
    UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(153, 105, 20, 15);
    UIImage *image2=[UIImage imageNamed:@"img1"];
    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button1 setImage:image2 forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(180, 105, 20, 20)];
    label4.text=@"15";
    label4.font=[UIFont systemFontOfSize:13];
    label4.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    [self.view addSubview:label4];
    
    UIButton *button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(209, 105, 20, 15);
    UIImage *image3=[UIImage imageNamed:@"button_zan"];
    image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button2 setImage:image3 forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    UILabel *label5=[[UILabel alloc]initWithFrame:CGRectMake(231, 105, 30, 20)];
    label5.text=@"120";
    label5.font=[UIFont systemFontOfSize:13];
    label5.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    [self.view addSubview:label5];

    
    UIButton *button3=[UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame=CGRectMake(272, 105, 20, 15);
    UIImage *image4=[UIImage imageNamed:@"button_guanzhu"];
    image4=[image4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button3 setImage:image4 forState:UIControlStateNormal];
    [self.view addSubview:button3];
    
    UILabel *label6=[[UILabel alloc]initWithFrame:CGRectMake(295, 105, 30, 20)];
    label6.text=@"89";
    label6.font=[UIFont systemFontOfSize:13];
    label6.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    [self.view addSubview:label6];
    
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 133, 375, 315) style:UITableViewStylePlain];
    [self.view addSubview:tab];
    tab.showsVerticalScrollIndicator=NO;
    tab.delegate=self;
    tab.dataSource=self;
    tab.scrollEnabled=NO;
    
    array1=[NSArray arrayWithObjects:@"img2",@"img4",@"button_zan",@"img5",@"img6",@"img7", nil];
    array2=[NSArray arrayWithObjects:@"我上传的",@"我的信息",@"我推荐的",@"院系通知",@"设置",@"退出", nil];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
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
    while([cell.contentView.subviews lastObject]!=nil)
    {
        [(UIView *)[cell.contentView.subviews lastObject]removeFromSuperview];
    }
    UIImage *image=[UIImage imageNamed:[array1 objectAtIndex:indexPath.row]];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    cell.imageView.image=image;
    cell.textLabel.text=[array2 objectAtIndex:indexPath.row];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(305, 18, 15, 15);
    UIImage *image1=[UIImage imageNamed:@"img3"];
    [button setImage:image1 forState:UIControlStateNormal];
    [cell.contentView addSubview:button];
    return cell;
}
-(void )tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([tab indexPathForSelectedRow].row==0)
    {
        MyUploadViewController *myUp=[[MyUploadViewController alloc]init];
        myUp.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:myUp animated:NO];
    }
    else if([tab indexPathForSelectedRow].row==1)
    {
        MyInforViewController *MyInfor=[[MyInforViewController alloc]init];
        MyInfor.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:MyInfor animated:NO];
    }
    else if([tab indexPathForSelectedRow].row==2)
    {
        MyRecommedViewController *MyRe=[[MyRecommedViewController alloc]init];
        MyRe.hidesBottomBarWhenPushed=YES;
        [self.navigationController
         pushViewController:MyRe animated:YES];
    }
    else if([tab indexPathForSelectedRow].row==4)
    {
        
        SettingViewController *set=[[SettingViewController alloc]init];
        set.hidesBottomBarWhenPushed=YES;
        [self.navigationController
         pushViewController:set animated:YES];
    }

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
