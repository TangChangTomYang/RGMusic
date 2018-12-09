//
//  RGLrcParseController.m
//  RGMusic
//
//  Created by yangrui on 2018/11/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGLrcParseController.h"
#import "YRLabel.m"

@interface RGLrcParseController ()

@property(nonatomic, strong)YRLabel *lrcLb;

@end

@implementation RGLrcParseController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.lrcLb = [[YRLabel alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 100)];
    [self.view addSubview:self.lrcLb];
    self.lrcLb.text = @"dsfadadfafaasdfgasdgasdgasdfgasdfasdfasdfasdf";
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.lrcLb.lrcprogress += 0.1;
}

@end
