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
        
//        
//                //转成JSON串显示
//                if ([result isKindOfClass:[NSData class]]) {
//                    result = [NSJSONSerialization JSONObjectWithData:result options:kNilOptions error:nil];
//                }
//                if (success) {
//        
//                    completionHandler(YES,nil,result);
//                }else{
//                    completionHandler(NO,nil,result);
//        
//        
//                }

    }];
}

+ (void)GetWithShareManagerCategoryTitleImage:(YMFetchResultCompletionHandler)completionHandler {
    NSString * str = [NSString stringWithFormat:@"http://api.liwushuo.com/v2/item_categories/tree"];
    
    [YMHttpsEngine get:str completionHandler:^(BOOL success, NSError *error, id result) {
    

        if (success) {
            
            /* 转成JSON串显示  */
            if ([result isKindOfClass:[NSData class]]) {
                result = [NSJSONSerialization JSONObjectWithData:result options:kNilOptions error:nil];
            }
            /* 判断成功字段  这个字段是和后台约定好的*/
            if ([result[@"message"]isEqualToString:@"OK"]) {
                //            NSLog(@"%@",result[@"errorMsg"]);
                completionHandler(YES,error,result);
                
            }else{
                //            NSLog(@"%@",result);
                completionHandler(NO,error,result[@"errorMsg"]);
                
            }
            
            
        }else{
            completionHandler(NO,error,@"网络错误");
            
        }

        
    }];
    
}

@end
