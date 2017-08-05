//
//  LoopScrollImageView.m
//  UIS
//
//  Created by Powerstar on 2017/8/5.
//  Copyright © 2017年 Powerstar. All rights reserved.
//

#import "LoopScrollImageView.h"

@implementation LoopScrollImageView

-(id) initWithFrame:(CGRect)frame images:(NSArray *)images
{
    if(self=[super initWithFrame:frame]){
        self.dataSource=images;
        
        //初始化定时器
        
        _timer =[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(loopImageTimer :) userInfo:nil repeats:YES];
        
        CGFloat viewWidth= 355;
        CGFloat viewHeigh =175;
        NSUInteger pageCount = images.count;
        
        //初始化ScrollView
        
        _scrollView =[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, viewWidth, viewHeigh)];
        _scrollView.contentSize=CGSizeMake(viewWidth*pageCount, viewHeigh);
        _scrollView.showsVerticalScrollIndicator=NO;
        _scrollView.showsHorizontalScrollIndicator=NO;
        
        _scrollView.pagingEnabled=YES;
        _scrollView.delegate=self;
        
        for(int i=0;i<images.count;i++)
        {
            UIImageView *imageView =[[UIImageView alloc]initWithFrame:CGRectMake(viewWidth*i, 0, viewWidth, viewHeigh)];
            imageView.contentMode=UIViewContentModeScaleAspectFill;
            imageView.image=[UIImage imageNamed:images[i]];
            imageView.tag=i;
            imageView.userInteractionEnabled =YES;
            UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(loopImageOnClicked :)];
            
            [imageView addGestureRecognizer:tap];
            
            [_scrollView addSubview:imageView];
        }
        
        
        [self addSubview:_scrollView];
        
        if(images.count>1)
        {
            // 初始化UIPageControl
            int pageControlHeight=30;
            CGFloat scrollViewBottom = _scrollView.frame.origin.y+_scrollView.frame.size.height;
            _pageControl =[[UIPageControl alloc]initWithFrame:CGRectMake(137.5, scrollViewBottom-pageControlHeight, 100, pageControlHeight)];
            _pageControl.currentPage=0;
            _pageControl.numberOfPages=pageCount;
            _pageControl.backgroundColor=[UIColor clearColor];
            [self addSubview:_pageControl];
            
            //初始化 当前页／总页数
            
           
        }
            
    }
    
    return self;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if([scrollView isMemberOfClass:[UITableView class]]){
        
    }else{
        int index =fabs(scrollView.contentOffset.x)/(scrollView.frame.size.width);
        _pageControl.currentPage =index;
        
        _currentPageLabel.text=[NSString stringWithFormat:@"%d/%ld", index + 1, self.dataSource.count];
    }
}

-(void) loopImageTimer :(NSTimer *)timer{
    NSUInteger totalnum =self.dataSource.count;
    if(totalnum>1){
        CGPoint newOffset =_scrollView.contentOffset;
        newOffset.x = newOffset.x +CGRectGetWidth(_scrollView.frame);
        
        if(newOffset.x>(CGRectGetWidth(_scrollView.frame)*(totalnum-1))){
            newOffset.x=0;
        }
        int index =newOffset.x/CGRectGetWidth(_scrollView.frame);
        newOffset.x=index*CGRectGetWidth(_scrollView.frame);
        
        _pageControl.currentPage=index;
        _currentPageLabel.text=[NSString stringWithFormat:@"%d/%ld",index+1,totalnum];
        [_scrollView setContentOffset:newOffset animated:YES];
    }else{
        [_timer setFireDate:[NSDate distantFuture]];
    }
}

-(void) loopImageOnClicked:(UITapGestureRecognizer *)tapGestureRecongnizer{
    NSInteger imageViewTag =tapGestureRecongnizer.view.tag;
    NSLog(@"imageViewTag:--------%ld",imageViewTag);
}

-(void)startTImer{
    [_timer setFireDate:[NSDate distantPast]];
}

-(void) stopTimer{
    [_timer setFireDate:[NSDate distantFuture]];
}

@end
