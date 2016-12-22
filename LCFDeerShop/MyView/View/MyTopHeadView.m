//
//  MyTopHeadView.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/11/29.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "MyTopHeadView.h"

@implementation MyTopHeadView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self addSubview:self.topHead_image];
       
    }
    
    return self;
    
}

-(void)layoutSubviews{
    
    
    [super layoutSubviews];

    [self.topHead_image mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(LCF_SCREEN_WIDTH );
        make.height.mas_equalTo(@(250));
    }];
    
    
}

-(UIImageView *)topHead_image{
    
    if (!_topHead_image) {
        
        _topHead_image = [[UIImageView alloc]init];
        [_topHead_image setImage:[UIImage imageNamed:@"patternNav"]];
        
    }
    return _topHead_image;
}

@end
