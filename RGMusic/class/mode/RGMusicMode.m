//
//  RGMusicMode.m
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGMusicMode.h"

@implementation RGMusicMode

+(instancetype)modeWithDic:(NSDictionary *)dic{
    RGMusicMode *mode = [[self alloc]init];
    [mode setValuesForKeysWithDictionary:dic];
    return mode;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}
@end
