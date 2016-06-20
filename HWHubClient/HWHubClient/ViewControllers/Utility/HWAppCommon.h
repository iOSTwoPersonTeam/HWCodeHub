//
//  HWAppCommon.h
//  HWHubClient
//
//  Created by 程登伟 on 16/6/20.
//  Copyright © 2016年 ergou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIView;

@interface HWAppCommon : NSObject

+(instancetype)shareInstance;





/*
 ** 仅文本提示的Hub
 */
-(void)showHubWithOnlyText:(NSString *)text toView:(UIView *)view hideDelay:(NSTimeInterval)delay;


/*
 ** 当前网络状态
 */
-(BOOL)whetherConnectInternet;
-(BOOL)whetherViaWIFI;
-(BOOL)whetherViaWWAN;

@end
