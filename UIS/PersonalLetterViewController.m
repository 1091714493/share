//
//  PersonalLetterViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/31.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "PersonalLetterViewController.h"
#import "ChatViewController.h"
@interface PersonalLetterViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tab;
    NSArray *array1;
    NSArray *array2;
    NSArray *array3;
    NSArray *array4;
}

@end

@implementation PersonalLetterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"私信" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 100, 40);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    

    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 340) style:UITableViewStylePlain];
    [self.view addSubview:tab];
    tab.delegate=self;
    tab.dataSource=self;
    tab.showsVerticalScrollIndicator=NO;
    tab.scrollEnabled=NO;
    
    array1=[NSArray arrayWithObjects:@"sixin_img1",@"sixin_img2",@"sixin_img3",@"sixin_img4", nil];
    array2=[NSArray arrayWithObjects:@"share小格",@"share小兰",@"share小明",@"share小雪", nil];
    array3=[NSArray arrayWithObjects:@"你的作品我很喜欢",@"谢谢，以关注你",@"为你点赞！",@"你好可以问问你是怎么拍的吗", nil];
    array4=[NSArray arrayWithObjects:@"11-03 09:45",@"11-03 10:00",@"11-03 10:23",@"11-03 11:20", nil];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 85;
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
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(40, 15, 55, 55)];
    UIImage *image1=[UIImage imageNamed:[array1 objectAtIndex:indexPath.row]];
    imageV.image=image1;
    [cell.contentView addSubview:imageV];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(103, 26, 85, 20)];
    label.text=[array2 objectAtIndex:indexPath.row];
    label.font=[UIFont systemFontOfSize:15];
    [cell.contentView addSubview:label];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(103, 53, 200, 20)];
    label1.text=[array3 objectAtIndex:indexPath.row];
    label1.font=[UIFont systemFontOfSize:15];
    label1.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    [cell.contentView addSubview:label1];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(287, 24, 80, 15)];
    label2.text=[array4 objectAtIndex:indexPath.row];
    label2.font=[UIFont systemFontOfSize:11];
    label2.textColor=[UIColor grayColor];
    [cell.contentView addSubview:label2];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if([tab indexPathForSelectedRow].row==1)
    {
        ChatViewController *chat=[[ChatViewController alloc]init];
        [self.navigationController pushViewController:chat animated:YES];
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
