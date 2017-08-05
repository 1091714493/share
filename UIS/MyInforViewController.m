//
//  MyInforViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "MyInforViewController.h"
#import "PersonalLetterViewController.h"
#import "NewAttentionViewController.h"
#import "ChatViewController.h"
@interface MyInforViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tab;
    NSArray *array1;
    NSArray *array2;
}

@end

@implementation MyInforViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"我的信息" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 140, 40);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    

    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 350) style:UITableViewStylePlain];
    [self.view addSubview: tab];
    
    tab.showsVerticalScrollIndicator=NO;
    tab.delegate=self;
    tab.dataSource=self;
    tab.scrollEnabled=NO;
    
    array1=[NSArray arrayWithObjects:@"评论",@"推荐我的",@"新关注的",@"私信",@"活动通知", nil];
    array2=[NSArray arrayWithObjects:@"7",@"9",@"5",@"4",@"1", nil];
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
    cell.textLabel.text=[array1 objectAtIndex:indexPath.row];
    cell.textLabel.font=[UIFont systemFontOfSize:22];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(305, 25, 15, 15);
    UIImage *image1=[UIImage imageNamed:@"img3"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [button setImage:image1 forState:UIControlStateNormal];
    [cell.contentView addSubview:button];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(330, 25, 15, 15)];
    label.text=[array2 objectAtIndex:indexPath.row];
    label.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    [cell.contentView addSubview:label];
    return cell;
}
-(void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void )tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([tab indexPathForSelectedRow].row==2)
    {
        NewAttentionViewController *new=[[NewAttentionViewController alloc]init];
        new.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:new animated:YES];
    }
    if([tab indexPathForSelectedRow].row==3)
    {
        PersonalLetterViewController *per=[[PersonalLetterViewController alloc]init];
        per.hidesBottomBarWhenPushed=YES;
        [self.navigationController pushViewController:per animated:YES];
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
