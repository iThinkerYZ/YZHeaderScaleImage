//
//  YZTableViewController.m
//  YZHeaderScaleImageDemo
//
//  Created by yz on 16/7/29.
//  Copyright © 2016年 yz. All rights reserved.
//

#import "YZTableViewController.h"
#import "UIScrollView+HeaderScaleImage.h"
static NSString * const ID = @"cell";
@interface YZTableViewController ()

@end

@implementation YZTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 设置tableView头部缩放图片
    self.tableView.yz_headerScaleImage = [UIImage imageNamed:@"header"];
    
    // 设置tableView头部视图，必须设置头部视图背景颜色为clearColor,否则会被挡住
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
    headerView.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = headerView;
   
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    cell.textLabel.textColor = [UIColor redColor];
    
    NSString *text = nil;
    switch (indexPath.row) {
        case 0:
        {
            text = @"小码哥";
            break;
        }
        case 1:
        {
            text = @"ios培训";
            break;
        }
        case 2:
        {
            text = @"微博:吖了个峥";
            break;
        }

        default:
            break;
    }

    cell.textLabel.text = text;
    
    return cell;
}

@end
