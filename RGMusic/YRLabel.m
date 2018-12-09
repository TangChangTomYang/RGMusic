//
//  YRLabel.m
//  RGMusic
//
//  Created by yangrui on 2018/11/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "YRLabel.h"

@implementation YRLabel

-(void)setLrcprogress:(float)lrcprogress{
    _lrcprogress = lrcprogress;
    // 刷帧
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    
    [[UIColor greenColor] set];
    UIRectFillUsingBlendMode(CGRectMake(0, 0, rect.size.width * self.lrcprogress, rect.size.height), kCGBlendModeSourceIn);
}





@end
