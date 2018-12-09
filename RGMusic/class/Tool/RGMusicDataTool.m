//
//  RGMusicDataTool.m
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGMusicDataTool.h"
#import "RGMusicMode.h"

@implementation RGMusicDataTool

+(void)fetchMusicDataCallback:(void(^)(NSArray *musicModeArr))callback{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Musics.plist" ofType:nil];
    NSArray *musicDicArr = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray * musicModeArrM = [NSMutableArray array];
    for (NSDictionary *dic in musicDicArr) {
        
        RGMusicMode *mode = [RGMusicMode modeWithDic:dic];
        [musicModeArrM addObject:mode];
    }
    
    if (callback) {
        callback(musicModeArrM);
    }
}
@end
