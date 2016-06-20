//
//  HWBaseViewController.h
//  HWHubClient
//
//  Created by 程登伟 on 16/6/19.
//  Copyright © 2016年 ergou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWBaseTableViewController : UIViewController

@property (nonatomic,strong)UITableView *tableView;



/*
 ** 网络请求,需子类覆写
 */
-(void)startService;

@end
