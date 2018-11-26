//
//  HmAreaModel.h
//  WeexEros
//
//  Created by 黄昊东 on 2018/11/23.
//  Copyright © 2018年 benmu. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol HmAreaModel <NSObject>

@end

@interface HmAreaModel : JSONModel

@property (nonatomic, strong) NSString<Optional> *name;
@property (nonatomic, strong) NSString<Optional> *code;
@end
