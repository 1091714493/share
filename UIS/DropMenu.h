//
//  DropMenu.h
//  UIS
//
//  Created by Powerstar on 2017/7/28.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropMenu : UIView<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tv;//下拉列表
    NSMutableArray *tableArray ;//下拉列表数据
    UILabel *textfield;
    BOOL showList;
    CGFloat tabheight;
    CGFloat frameHeight;
    UIButton *button;
}
@property(nonatomic,retain) UITableView *tv;
@property(nonatomic ,retain) NSArray *tableArray;
@property(nonatomic,retain)
UITextField *textField;
@property(nonatomic,retain)UIButton *button;

@end
