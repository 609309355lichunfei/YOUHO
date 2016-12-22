//
//  JSCartUIService.h
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/6.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "JSCartViewModel.h"

@class JSCartViewModel;

@interface JSCartUIService : NSObject<UITableViewDelegate,UITableViewDataSource>

@property   (nonatomic,retain)      JSCartViewModel     *   viewModel;

@property   (nonatomic,assign)      BOOL                    isEdit;

@property   (nonatomic,strong)      NSMutableArray      *   cartData;
@end
