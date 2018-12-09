//
//  RGMusicListController.m
//  RGMusic
//
//  Created by yangrui on 2018/11/21.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGMusicListController.h"
#import "RGMusicCell.h"
#import "RGMusicDataTool.h"
#import "RGMusicMode.h"

@interface RGMusicListController ()

@property(nonatomic, strong)NSArray<RGMusicMode *> *musicModeArr;
@end

@implementation RGMusicListController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    [self setupTableView];
   
    __weak typeof(self) weakSelf = self;
    [RGMusicDataTool fetchMusicDataCallback:^(NSArray *musicModeArr) {
        
        weakSelf.musicModeArr = musicModeArr;
        [weakSelf.tableView reloadData];
    }];
    
    
}

-(void)setupTableView{
    [self.tableView registerNib:[UINib nibWithNibName:@"RGMusicCell" bundle:nil] forCellReuseIdentifier:@"RGMusicCell"];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.rowHeight = 60;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"QQListBack"]];
    
    
}

// 设置状态栏颜色
-(UIStatusBarStyle)preferredStatusBarStyle{
   return  UIStatusBarStyleLightContent;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.musicModeArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RGMusicCell *cell = (RGMusicCell *)[tableView dequeueReusableCellWithIdentifier:@"RGMusicCell" forIndexPath:indexPath];
 
    RGMusicMode *mode = self.musicModeArr[indexPath.row];
    
    cell.musicMode = mode;
    
    [cell rotation_X_Animation];
    [cell scaleAnimation];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
