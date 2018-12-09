//
//  RGLrcLine.h
//  RGMusic
//
//  Created by yangrui on 2018/11/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RGLrcLine : NSObject

@property(nonatomic, assign)NSTimeInterval startTime;
@property(nonatomic, assign)NSTimeInterval endTime;
@property(nonatomic, copy)NSString *lrc;


+(instancetype)modeWithLine:(NSString *)line;
@end
