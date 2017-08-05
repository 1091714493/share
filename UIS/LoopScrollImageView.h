//
//  LoopScrollImageView.h
//  UIS
//
//  Created by Powerstar on 2017/8/5.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoopScrollImageView : UIView<UIScrollViewDelegate>

@property(nonatomic,retain) NSTimer *timer;
@property(nonatomic,retain)UIScrollView *scrollView;
@property(nonatomic,retain) UIPageControl * pageControl;
@property(nonatomic,retain)UILabel *currentPageLabel;
@property(nonatomic,retain)
NSArray *dataSource;
-(id) initWithFrame:(CGRect)frame images:(NSArray *)images;

-(void) startTImer;

-(void) stopTimer;

@end
