//
//  RGLrcMode.m
//  RGMusic
//
//  Created by yangrui on 2018/11/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGLrcMode.h"
#import "RGLrcLine.h"

@implementation RGLrcMode

+(instancetype)modeWithStr:(NSString *)lrcStr{
    if (lrcStr.length == 0) return nil;
    
    NSMutableArray *lrcLineArrM = [NSMutableArray array];
    NSArray *lineArr = [lrcStr componentsSeparatedByString:@"\n"];
    for (NSString *line in lineArr) {
        if ([line hasPrefix:@"[ti"] ||
            [line hasPrefix:@"[ar"] ||
            [line hasPrefix:@"[al"]) {
            continue;
        }
        RGLrcLine *lineMode = [RGLrcLine modeWithLine:line];
        if (lineMode ) {
            [lrcLineArrM addObject:lineMode];
        }
        
    }
    
    for (int i = 0 ; i < (lrcLineArrM.count - 1); i ++) {
        RGLrcLine *lineMode = lrcLineArrM[i];
        RGLrcLine *nextLineMode = lrcLineArrM[i+1];
        lineMode.endTime = nextLineMode.startTime;
    }
    
    RGLrcMode *lrcMode = [[self alloc] init];
    lrcMode.lrcLineArr = [lrcLineArrM copy];
    
    return lrcMode;
}







@end
