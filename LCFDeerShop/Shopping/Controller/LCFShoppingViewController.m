//
//  LCFShoppingViewController.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/11/18.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "LCFShoppingViewController.h"
#import "ShopDetailsViewController.h"
#import "JSCartUIService.h"
#import "JSCartViewModel.h"
#import "JSCartBar.h"
@interface LCFShoppingViewController ()
@property   (retain,nonatomic)  UIButton        *   shopCart ; //购物车入口按钮(这里暂时放一个按钮)

@end

@implementation LCFShoppingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.shopCart];
    self.title = @"购物车";
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
 
    return 1;
}

-(UIButton *)shopCart{
    
    if (!_shopCart) {
        _shopCart = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shopCart addTarget:self action:@selector(actionClickedShopCart:) forControlEvents:UIControlEventTouchUpInside];
        [_shopCart setTitle:@"立即购买" forState:UIControlStateNormal];
        [_shopCart setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
    }
    _shopCart.frame = CGRectMake(100, 200, 100, 100);
    return _shopCart;
}
//入口按钮
-(void)actionClickedShopCart:(UIButton *)sender{
    
    ShopDetailsViewController * DetailsVc = [[ShopDetailsViewController alloc] init];
    DetailsVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:DetailsVc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
