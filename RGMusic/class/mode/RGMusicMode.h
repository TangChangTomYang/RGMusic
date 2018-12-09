//
//  RGMusicMode.h
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RGMusicMode : NSObject

@property(nonatomic, copy)NSString *name;
@property(nonatomic, copy)NSString *filename;
@property(nonatomic, copy)NSString *lrcname;
@property(nonatomic, copy)NSString *singer;
@property(nonatomic, copy)NSString *singerIcon;
@property(nonatomic, copy)NSString *icon;

+(instancetype)modeWithDic:(NSDictionary *)dic;
@end
