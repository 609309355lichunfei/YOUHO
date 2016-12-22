//
//  YYDeerShopRequest.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/8.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "YYDeerShopRequest.h"

@implementation YYDeerShopRequest


+ (void)registerWithDic:(NSDictionary *)dic{
    
    [YMHttpsEngine post:API_URL parameters:dic completionHandler:^(BOOL success, NSError *error, id result) {
        
        
        if (success) {
            
            NSLog(@"%@",result);

        }else{
            NSLog(@"%@",result);

        }
    }];
}

@end
