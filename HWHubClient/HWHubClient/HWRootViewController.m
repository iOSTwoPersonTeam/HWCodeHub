//
//  ViewController.m
//  HWHubClient
//
//  Created by ergou on 16/4/28.
//  Copyright © 2016年 ergou. All rights reserved.
//

#import "HWRootViewController.h"
#import "Reachability.h"
#import "HWAppCommon.h"

@interface HWRootViewController ()
@property (nonatomic, strong)Reachability *reachability;

@end

@implementation HWRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self monitorNetworkStatus];
    
}


-(void)monitorNetworkStatus
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkChanged:) name:kReachabilityChangedNotification object:nil];
    self.reachability = [Reachability reachabilityForInternetConnection];
    [self.reachability startNotifier];
}


-(void)networkChanged:(NSNotification *)not
{
    if ([not.name isEqualToString:kReachabilityChangedNotification]) {
        
        NetworkStatus status = [self.reachability currentReachabilityStatus];
        
        NSString *content;
        switch (status) {
            case NotReachable:
                content = @"网络已断开";
                break;
                
            case ReachableViaWWAN:
                content = @"移动网络已连接";
                break;
                
            case ReachableViaWiFi:
                content = @"WIFI已连接";
                break;
                
            default:
                break;
        }
        
        [[HWAppCommon shareInstance] showHubWithOnlyText:content toView:[UIApplication sharedApplication].windows.lastObject hideDelay:1.5];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
