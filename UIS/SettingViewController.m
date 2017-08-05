//
//  SettingViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "SettingViewController.h"
#import "BasicsViewController.h"
#import "ChangeViewController.h"
#import "MessageViewController.h"

@interface SettingViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *tab;
    NSArray *array;
    NSTimer *myTimer;
    UILabel *labe;
}

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
//    self.navigationItem.title=@"设置";
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"设置" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 100, 40);
   self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 350) style:UITableViewStylePlain];
    [self.view addSubview: tab];
    
    tab.showsVerticalScrollIndicator=NO;
    tab.delegate=self;
    tab.dataSource=self;
    tab.scrollEnabled=NO;
    
    array=[NSArray arrayWithObjects:@"基本资料",@"修改密码",@"消息设置",@"关于SHARE",@"清除缓存", nil];
   
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
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
    cell.textLabel.text=[array objectAtIndex:indexPath.row];
    cell.textLabel.font=[UIFont systemFontOfSize:20];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(305, 25, 15, 15);
    UIImage *image1=[UIImage imageNamed:@"img3"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button setImage:image1 forState:UIControlStateNormal];
    [cell.contentView addSubview:button];
   
        return cell;
}

-(void )tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([tab indexPathForSelectedRow].row==0)
    {
        BasicsViewController *bas=[[BasicsViewController alloc]init];
        [self.navigationController pushViewController:bas animated:YES];
    }
    if([tab indexPathForSelectedRow].row==1)
    {
        ChangeViewController *cha=[[ChangeViewController alloc]init];
        [self.navigationController pushViewController:cha animated:YES];
    }
    if([tab indexPathForSelectedRow].row==2)
    {
        MessageViewController *mess=[[MessageViewController alloc]init];
        [self.navigationController pushViewController:mess animated:YES];
    }

    if([tab indexPathForSelectedRow].row==4)
    {
        labe=[[UILabel alloc]initWithFrame:CGRectMake(135, 390, 115, 35)];
        labe.text=@"缓存已清除";
        labe.textAlignment=NSTextAlignmentCenter;
        labe.backgroundColor=[UIColor blackColor];
        labe.textColor=[UIColor whiteColor];
        labe.layer.masksToBounds=YES;
        labe.layer.cornerRadius=3;
        [self.view addSubview:labe];
        myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(scrollTimer) userInfo:nil repeats:NO];
    }
}
-(void)scrollTimer
{
    
    [labe removeFromSuperview];
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
