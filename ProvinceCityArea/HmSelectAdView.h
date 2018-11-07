//
//  HmSelectAdView.h
//  AiaiWang
//
//  Created by 赵海明 on 2018/3/28.
//  Copyright © 2018年 cnmobi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WeexSDK/WeexSDK.h>

@interface HmSelectAdView : UIView

@property (nonatomic, copy) WXModuleKeepAliveCallback callback;
@property (nonatomic, copy) void (^confirmSelect)(NSArray *address);
- (void)show;
- (instancetype)initWithLastContent:(NSArray *)lastContent initWithOption:(NSDictionary *)options;
@end
