//
//  YYDeerShopRequest.h
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/8.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YMHttpsEngine.h"
@interface YYDeerShopRequest : NSObject


+ (void)registerWithDic:(NSDictionary *)dic;
//获取分类列表
+ (void)GetWithShareManagerCategoryTitleImage:(YMFetchResultCompletionHandler)completionHandler;
@end
