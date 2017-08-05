//
//  PictureViewController.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "PictureViewController.h"
#import "UpLoadViewController.h"

@interface PictureViewController ()<UICollectionViewDataSource,UISearchControllerDelegate,UICollectionViewDelegateFlowLayout,UIAlertViewDelegate>
{
    NSMutableArray *array;
    UICollectionView *cv;
    UIAlertView *alt;
    NSMutableArray *array1;
}

@end

@implementation PictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
     self.view.backgroundColor=[UIColor colorWithRed:0.93f green:0.93f blue:0.93f alpha:1.00f];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:25],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImage *image=[UIImage imageNamed:@"back_img"];
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage *image1=[UIImage imageNamed:@"shangchuan.jpg"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
    [butto setImage:image forState:UIControlStateNormal];
    [butto setTitle:@"上传图片" forState:UIControlStateNormal];
    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [butto.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
    butto.frame =CGRectMake(0, 500, 140, 40);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
    
    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    

    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goTo)];

    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc]init];
    layout.minimumLineSpacing=5;
    layout.sectionInset=UIEdgeInsetsMake(5, 5, 5, 5) ;
    layout.scrollDirection=UICollectionViewScrollDirectionVertical;
    
    cv=[[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 375, 667-64) collectionViewLayout:layout];
    [self.view addSubview:cv];
    cv.backgroundColor=[UIColor whiteColor];
    cv.delegate=self;
    cv.dataSource=self;
    
    array=[NSMutableArray arrayWithObjects:@"guanzhu_img5", @"guanzhu_img6",@"list_img1",@"list_img2",@"sixin_img1",@"sixin_img2",@"sixin_img3",@"sixin_img4",@"works_img1",@"works_img2",@"works_img3",@"works_img4",@"works_img5",@"guanzhu_img6",@"guanzhu_img6",@"guanzhu_img5",@"guanzhu_img6",@"list_img2",nil];

    
    [cv registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    array1=[[NSMutableArray alloc]init];

}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(110, 110);
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 18;
}

-(UICollectionViewCell *)collectionView :(UICollectionView *)collectionView cellForItemAtIndexPath :(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImage *image=[UIImage imageNamed:array[indexPath.row]];
    cell.tag=0;
    
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 122, 122)];
    imageV.image=image;
    imageV.backgroundColor = [UIColor whiteColor];
    [cell.contentView addSubview:imageV];
    
    UIImage *image1=[UIImage imageNamed:@"my_button_pressed"];
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(110, 0, 20, 20)];
    imageV1.image=image1;

    return cell;
}



-(void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)goTo
{
    alt=[[UIAlertView alloc]initWithTitle:@"确定上传所选内容" message:nil delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消",nil];
    [alt show];
    alt.delegate=self;
}
-(void)alertViewCancel:(UIAlertView *)alertView
{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"1" object:array1 userInfo:nil];
    
    UpLoadViewController *upload=[[UpLoadViewController alloc]init];
    [self.navigationController pushViewController:upload animated:NO];
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

    UIImage *image=[UIImage imageNamed:@"my_button_pressed"];
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:CGRectMake(100, 0, 20, 20)];
    imageV.image=image;
    
    
    UIImage *image1=[UIImage imageNamed:array[indexPath.row]];
    UIImageView *imageV1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 122, 122)];
    imageV1.image=image1;
    UICollectionViewCell *cell=[collectionView cellForItemAtIndexPath:indexPath];

    if(cell.tag==0)
    {
        [cell.contentView addSubview:imageV];        cell.tag=1;
        [array1 addObject :image1];
    }
    else{
        [cell.contentView addSubview: imageV1];
        cell.tag=0;
        [array1 removeObject:image1];
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
