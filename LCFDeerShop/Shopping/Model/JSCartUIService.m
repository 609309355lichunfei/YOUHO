//
//  JSCartUIService.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/6.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "JSCartUIService.h"
#import "JSCartViewModel.h"
@implementation JSCartUIService

#pragma mark -  UITableView  Delegate / DataSorce

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.viewModel.cartData.count;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.viewModel.cartData[section]count];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}


@end
