//
//  HWAppCommon.m
//  HWHubClient
//
//  Created by 程登伟 on 16/6/20.
//  Copyright © 2016年 ergou. All rights reserved.
//

#import "HWAppCommon.h"
#import "Reachability.h"
#import <MBProgressHUD.h>

@implementation HWAppCommon

+(instancetype)shareInstance{
    
    static HWAppCommon *_hwAppCommom;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hwAppCommom = [[HWAppCommon alloc] init];
    });
    return _hwAppCommom;
}



#pragma mark -MBHub-

-(void)showHubWithOnlyText:(NSString *)text toView:(UIView *)view hideDelay:(NSTimeInterval)delay{
    MBProgressHUD *hub = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hub.mode = MBProgressHUDModeText;
    [hub setLabelText:text];
    hub.removeFromSuperViewOnHide = YES;
    [hub hide:YES afterDelay:delay];
}


#pragma mark -获取网络状态-

-(BOOL)whetherConnectInternet{
    if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == NotReachable) {
        return NO;
    }
    return YES;
}

-(BOOL)whetherViaWIFI{
    if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWiFi) {
        return YES;
    }
    return NO;
}

-(BOOL)whetherViaWWAN{
    if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] == ReachableViaWWAN) {
        return YES;
    }
    return NO;
}

@end
