//
//  RGMusicDataTool.h
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RGMusicMode;

@interface RGMusicDataTool : NSObject

+(void)fetchMusicDataCallback:(void(^)(NSArray *musicModeArr))callback;
@end
