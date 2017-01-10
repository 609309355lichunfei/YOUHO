//
//  ShoppingModel.m
//  LCFDeerShop
//
//  Created by 李春菲 on 17/1/10.
//  Copyright © 2017年 lichunfei. All rights reserved.
//

#import "ShoppingModel.h"

@implementation ShoppingModel

-(instancetype)initWithShopDict:(NSDictionary *)dict{
    
    self.imageName = dict[@"imageName"];
    self.goodsTitle = dict[@"goodsTitle"];
    self.goodsPrice = dict[@"goodsPrice"];
    self.goodsNum = [dict[@"goodsNum"]intValue];
    self.goodsType = dict[@"goodsType"];
    
    self.selectState = [dict[@"selectState"]boolValue];
    
    return self;
}


@end
