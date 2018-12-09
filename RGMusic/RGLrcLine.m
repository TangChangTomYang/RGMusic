//
//  RGLrcLine.m
//  RGMusic
//
//  Created by yangrui on 2018/11/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGLrcLine.h"
// [00:33.20]只是因为在人群中多看了你一眼
@implementation RGLrcLine

+(instancetype)modeWithLine:(NSString *)line{
 
    if(line.length == 0) return nil;
    RGLrcLine *mode = [[self alloc] init];
    NSString *lrcLine = [line stringByReplacingOccurrencesOfString:@"[" withString:@""];
    NSArray  *subStrArr = [lrcLine componentsSeparatedByString:@"]"];
    mode.lrc = [subStrArr lastObject];
    NSArray *timeArr = [subStrArr.firstObject componentsSeparatedByString:@":"];
    mode.startTime = [[timeArr firstObject] intValue] * 60 + [[timeArr lastObject] intValue];
  
    
    return mode;
}


@end
