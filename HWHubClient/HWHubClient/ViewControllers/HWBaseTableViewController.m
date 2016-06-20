//
//  HWBaseViewController.m
//  HWHubClient
//
//  Created by 程登伟 on 16/6/19.
//  Copyright © 2016年 ergou. All rights reserved.
//

#import "HWBaseTableViewController.h"
#import "MJRefreshHeader.h"
#import "Utility/HWAppCommon.h"

@interface HWBaseTableViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation HWBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] init];
    self.tableView.mj_header = [MJRefreshHeader headerWithRefreshingBlock:^{
        if ([[HWAppCommon shareInstance] whetherConnectInternet]) {
            [self startService];
        }else{
            
            [self.tableView.mj_header endRefreshing];
        }
    }];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Do any additional setup after loading the view.
}


-(void)startService{

}


#pragma mark -UITableViewDataSource-
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    return cell;
}

#pragma mark -UITableViewDelegate-
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
