//
//  HWViewController.m
//  HWHubClient
//
//  Created by 程登伟 on 16/6/19.
//  Copyright © 2016年 ergou. All rights reserved.
//

#import "HWTabBarViewController.h"


@interface HWTabBarViewController ()

@end

@implementation HWTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initViewControllers];
    // Do any additional setup after loading the view.
}


-(void)initViewControllers {
    NSMutableArray *viewControllers = [NSMutableArray arrayWithCapacity:0];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
