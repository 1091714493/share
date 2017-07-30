//
//  DropMenu.m
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "DropMenu.h"

@implementation DropMenu


@synthesize tv,tableArray,textField,button;

-(id)initWithFrame:(CGRect)frame
{
    if (frame.size.height<200) {
        frameHeight = 140;  }else{
            frameHeight = frame.size.height;
        }
    tabheight = frameHeight-30;
    
    frame.size.height = 30.0f;
    
    self=[super initWithFrame:frame];
    
    if(self){
        showList = NO; //默认不显示下拉框
        
        tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, frame.size.width, 0)];
        tv.delegate = self;
        tv.dataSource = self;
        tv.backgroundColor = [UIColor grayColor];
        tv.separatorColor = [UIColor lightGrayColor];
        tv.hidden = YES;
        [self addSubview:tv];
        
        textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 30)];
        textField.borderStyle=UITextBorderStyleRoundedRect;//设置文本框的边框风格
        //        [textField addTarget:self action:@selector(dropdown) forControlEvents:UIControlEventAllTouchEvents];
        textField.layer.borderWidth=2;
        textField.layer.borderColor=[UIColor blackColor].CGColor;
        textField.layer.masksToBounds=YES;
        textField.layer.cornerRadius=5;
        [self addSubview:textField];
        
        button =[UIButton buttonWithType:UIButtonTypeSystem];
        button.frame=CGRectMake(100, 0, 20, 30);
        UIImage *image1=[UIImage imageNamed:@"img14"];
        image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [button setImage:image1 forState:UIControlStateNormal];
        UIImage *image2=[UIImage imageNamed:@"img13"];
        image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [button setImage:image2 forState:UIControlStateSelected];
        [button setBackgroundColor:[UIColor whiteColor]];
        button.layer.borderColor=[UIColor blackColor].CGColor;
        button.layer.borderWidth=2;
        
        [button addTarget:self action:@selector(Click :) forControlEvents:UIControlEventTouchUpInside];
        [textField  addSubview:button];
    }
    return self;
}
-(void)Click:(UIButton *)btn
{
    if ([btn isSelected])
    {
        [btn setBackgroundColor:[UIColor whiteColor]];
        
    }
    else{
        [btn setTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f]];
        [btn setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f]];
    }
    btn.selected=!btn.isSelected;
    
    
    
    [textField resignFirstResponder];
    if (showList) {//如果下拉框已显示，什么都不做
        return;
    }else {//如果下拉框尚未显示，则进行显示
        
        CGRect sf = self.frame;
        sf.size.height = frameHeight;
        
        //把dropdownList放到前面，防止下拉框被别的控件遮住
        [self.superview bringSubviewToFront:self];
        tv.hidden = NO;
        showList = YES;//显示下拉框
        
        CGRect frame = tv.frame;
        frame.size.height = 0;
        tv.frame = frame;
        frame.size.height = tabheight;
        [UIView beginAnimations:@"ResizeForKeyBoard" context:nil];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        self.frame = sf;
        tv.frame = frame;
        [UIView commitAnimations];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }
    cell.backgroundColor=[UIColor colorWithRed:0.84f green:0.83f blue:0.83f alpha:1.00f];
    cell.textLabel.text = [tableArray objectAtIndex:[indexPath row]];
    cell.textLabel.font = [UIFont systemFontOfSize:16.0f];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 35;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    textField.text = [tableArray objectAtIndex:[tableView indexPathForSelectedRow].row];
    showList = NO;
    tv.hidden = YES;
    
    CGRect sf = self.frame;
    sf.size.height = 30;
    self.frame = sf;
    CGRect frame = tv.frame;
    frame.size.height = 0;
    tv.frame = frame;
    if ([button isSelected])
    {
        [button setBackgroundColor:[UIColor whiteColor]];
        
    }
    else{
        [button setTintColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f]];
        [button setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.79f alpha:1.00f]];
    }
    button.selected=!button.isSelected;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
