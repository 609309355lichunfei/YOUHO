//
//  YMUtils.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/11/21.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "YMUtils.h"

static YMUtils * shareUtils;
#define  kFike [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"loginParam.data"]

@implementation YMUtils

+(instancetype)shareUtils{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareUtils = [[self alloc] init];
    });
    return shareUtils;
}
+(void)saveLoginParam:(LCFUserResponse *)loginParam{
    
   [NSKeyedArchiver archiveRootObject:loginParam toFile:kFike];
}

//取模型
+(LCFUserResponse *)loginParam{
    
    // 加载模型
    id loginParam = [NSKeyedUnarchiver unarchiveObjectWithFile:kFike];
    return loginParam;
}


@end
