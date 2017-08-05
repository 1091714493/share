//
//  Text2ViewController.m
//  UIS
//
//  Created by Powerstar on 2017/8/1.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "Text2ViewController.h"
#import "TextViewController.h"
#import "Text3ViewController.h"
@interface Text2ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tab;
    NSArray *array;
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
}


@end

@implementation Text2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    self.navigationItem.title=@"文章";
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 40)];
    view.backgroundColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
    [self.view addSubview:view];
    
    button1=[UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame=CGRectMake(0, 0, 123, 40);
    [button1 setTitle:@"精选文章" forState:UIControlStateNormal];
    button1.titleLabel.font=[UIFont systemFontOfSize:20];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor colorWithRed:0.64f green:0.64f blue:0.64f alpha:1.00f]forState:UIControlStateSelected];
    button1.tag=1;
    [self.view addSubview:button1];
    
    button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(126, 0, 123, 40);
    [button2 setTitle:@"热门推荐" forState:UIControlStateNormal];
    button2.titleLabel.font=[UIFont systemFontOfSize:20];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor colorWithRed:0.64f green:0.64f blue:0.64f alpha:1.00f]forState:UIControlStateSelected];
    button2.tag=2;
    [self.view addSubview:button2];
    
    button3=[UIButton buttonWithType:UIButtonTypeSystem];
    button3.frame=CGRectMake(252, 0, 123, 40);
    [button3 setTitle:@"全部文章" forState:UIControlStateNormal];
    button3.titleLabel.font=[UIFont systemFontOfSize:20];
    [button3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor colorWithRed:0.64f green:0.64f blue:0.64f alpha:1.00f]forState:UIControlStateSelected];
    button3.tag=3;
    [self.view addSubview:button3];
    
    UIImage *image1=[UIImage imageNamed:@"essay_line"];
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(123, 5, 3, 30)];
    imageV1.image=image1;
    [self.view addSubview:imageV1];
    
    UIImage *image2=[UIImage imageNamed:@"essay_line"];
    UIImageView *imageV2=[[UIImageView alloc]initWithFrame:CGRectMake(249, 5, 3, 30)];
    imageV2.image=image2;
    [self.view addSubview:imageV2];
    
    [button1 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    [button3 addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
    button2.selected=YES;
    [button2 setTintColor:[UIColor clearColor]];
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(10, 40, 355, 667-64-40-48) style:UITableViewStylePlain];
    [self.view addSubview:tab];
    tab.delegate=self;
    tab.dataSource=self;

    
    array=[NSArray arrayWithObjects:@"note_img4",@"note_img3", nil];
    
    tab.showsVerticalScrollIndicator=NO;

}

-(void)Click:(UIButton *)btn
{
    for(int i=1;i<4;i++)
    {
        if(btn.tag==i){
            btn.selected=YES;
            [btn setTintColor:[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f]];
            continue;
        }
        UIButton *but =(UIButton *)[self.view viewWithTag:i];
        but.selected=NO;
    }
    if(button3.selected==YES)
    {
        TextViewController *text=[[TextViewController alloc]init];
        [self.navigationController pushViewController:text animated:NO];
    }
    else if(button1.selected==YES)
    {
        Text3ViewController *text3=[[Text3ViewController alloc]init];
        [self.navigationController pushViewController:text3 animated:NO];
    }

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 125;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
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
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 165, 125)];
    UIImage *image=[UIImage imageNamed:[array objectAtIndex:indexPath.section]];
    imageV.image=image;
    [cell.contentView addSubview:imageV];
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame=CGRectMake(190, 90, 15, 15) ;
    UIImage *image1=[UIImage imageNamed:@"button_zan"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [btn1 setBackgroundImage:image1 forState:UIControlStateNormal];
    [cell.contentView addSubview:btn1];
    
    UILabel *label11=[[UILabel alloc]initWithFrame:CGRectMake(207, 95, 25, 10)];
    label11.text=@"45";
    label11.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    label11.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label11];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame=CGRectMake(245, 90, 25, 15) ;
    UIImage *image2=[UIImage imageNamed:@"button_guanzhu"];
    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [btn2 setBackgroundImage:image2 forState:UIControlStateNormal];
    [cell.contentView addSubview:btn2];
    
    UILabel *label21=[[UILabel alloc]initWithFrame:CGRectMake(272, 90, 25, 15)];
    label21.text=@"105";
    label21.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    label21.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label21];
    
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame=CGRectMake(310, 90, 15, 15) ;
    UIImage *image3=[UIImage imageNamed:@"button_share"];
    image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [btn3 setBackgroundImage:image3 forState:UIControlStateNormal];
    [cell.contentView addSubview:btn3];
    
    UILabel *label31=[[UILabel alloc]initWithFrame:CGRectMake(327, 90, 25, 15)];
    label31.text=@"20";
    label31.textColor=[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f];
    label31.font=[UIFont systemFontOfSize:12];
    [cell.contentView addSubview:label31];
    if(indexPath.section==0)
    {
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
    else if(indexPath.section==1)
    {
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(180, 15, 80, 20)];
        label1.text=@"字体故事";
        label1.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:label1];
        
        UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(280, 20, 60, 15)];
        label2.textColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
        label2.text=@"share小吕";
        label2.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label2];
        
        UILabel *lable5=[[UILabel alloc]initWithFrame:CGRectMake(180, 45, 140,15)];
        lable5.text=@"设计文章-经验-设计观点";
        lable5.textColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
        lable5.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:lable5];
        
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(180, 60, 100, 15)];
        label4.textColor=[UIColor colorWithRed:0.36f green:0.36f blue:0.36f alpha:1.00f];
        label4.text=@"45分钟前";
        label4.font=[UIFont systemFontOfSize:12];
        [cell.contentView addSubview:label4];
    }

    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc]init];
    view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    return view;
}


-(void)goBack
{
    [self.navigationController popViewControllerAnimated:NO];
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
