//
//  RGMusicCell.m
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGMusicCell.h"
#import "UIView+Extension.h"
#import "RGMusicMode.h"

@implementation RGMusicCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
     self.imgView.layer.cornerRadius = 20;
    self.imgView.layer.masksToBounds = YES;
    self.selectionStyle  = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
}

-(void)setMusicMode:(RGMusicMode *)musicMode{
    _musicMode = musicMode;
    self.imgView.image = [UIImage imageNamed:musicMode.singerIcon];
    self.nameLb.text = musicMode.name;
    self.singerLb.text = musicMode.singer;
}


-(void)rotation_X_Animation{
    
    [self.layer removeAnimationForKey:@"rotation"];
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.x"];
    animation.values = @[@(-1/4*M_PI), @(0),@(-1/4*M_PI), @(0)];
    animation.duration = 5;
    animation.repeatCount = 2;
    [self.layer addAnimation:animation forKey:@"rotation"];
    
    
    
}

-(void)scaleAnimation{
    
    [self.layer removeAnimationForKey:@"scale"];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue = @(0.5);
    animation.toValue = @(1);
    animation.duration = 5;
    animation.repeatCount = 1;
    [self.layer addAnimation:animation forKey:@"scale"];
    
}

@end
