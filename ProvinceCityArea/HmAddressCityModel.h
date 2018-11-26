//
//  HmAddressCityModel.h
//  AiaiWang
//
//  Created by 赵海明 on 2018/3/27.
//  Copyright © 2018年 cnmobi. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "HmAreaModel.h"
@protocol HmAddressCityModel <NSObject>

@end

@interface HmAddressCityModel : JSONModel

@property (nonatomic, strong) NSString<Optional> *name;
@property (nonatomic, strong) NSString<Optional> *code;
//@property (nonatomic, strong) NSArray<Optional> *area;
@property (nonatomic, strong) NSArray<HmAreaModel, Optional> *area;
@end
