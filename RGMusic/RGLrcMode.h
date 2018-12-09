//
//  RGLrcMode.h
//  RGMusic
//
//  Created by yangrui on 2018/11/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RGLrcLine;

@interface RGLrcMode : NSObject

@property(nonatomic, strong)NSString *title;
@property(nonatomic, strong)NSString *artic;
@property(nonatomic, strong)NSString *album;

@property(nonatomic, strong)NSArray<RGLrcLine *> *lrcLineArr;

+(instancetype)modeWithStr:(NSString *)lrcStr;

@end
