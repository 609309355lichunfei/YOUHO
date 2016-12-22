//
//  JSCartViewModel.h
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/6.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LCFShoppingViewController;

@interface JSCartViewModel : NSObject

@property   (nonatomic, weak  )   UITableView                *    cartTableView;

@property   (nonatomic, strong)   NSMutableArray             *    cartData;

@property   (nonatomic,  weak )   LCFShoppingViewController  *    cartVC;

/**
 *      存放在店铺选中
 */
@property   (nonatomic, strong)   NSMutableArray              *   shopSelectArray;

/**
 *      观察的属性变化
 */
@property   (nonatomic, assign)   float                          allPrices;

/**
 *      全选状态
 */
@property   (nonatomic, assign)   BOOL                           isSelectAll;
/**
 *      购物车商品数量
 */
@property (nonatomic, assign)     NSInteger                        cartGoodsCount;
/**
 *  当前所选商品数量
 */
@property (nonatomic, assign)     NSInteger                        currentSelectCartGoodsCount;

/**
 *  记录选中的商品
 */
@property (nonatomic, retain)     NSMutableArray               *   selectProduct;

//获取数据
- (void)getData;

//全选
- (void)selectAll:(BOOL)isSelect;

//row select
- (void)rowSelect:(BOOL)isSelect
        IndexPath:(NSIndexPath *)indexPath;

//row change quantity
- (void)rowChangeQuantity:(NSInteger)quantity
                indexPath:(NSIndexPath *)indexPath;

//获取价格
- (float)getAllPrices;

//左滑删除商品
- (void)deleteGoodsBySingleSlide:(NSIndexPath *)path;

//选中删除
- (void)deleteGoodsBySelect;

@end
