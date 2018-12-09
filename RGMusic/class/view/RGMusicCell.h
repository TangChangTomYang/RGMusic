//
//  RGMusicCell.h
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RGMusicMode;

@interface RGMusicCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *nameLb;
@property (weak, nonatomic) IBOutlet UILabel *singerLb;



@property(nonatomic, strong)RGMusicMode *musicMode;


-(void)rotation_X_Animation;
-(void)scaleAnimation;
@end