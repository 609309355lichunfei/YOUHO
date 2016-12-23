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
        [self addSubview:self.headGuidance];
        [_headGuidance addSubview:self.collect_shop];
        [_headGuidance addSubview:self.collect_Brand];
        [_headGuidance addSubview:self.collect_Records];
        [self addSubview:self.heard_icon];
    }
    
    return self;
    
}

-(void)layoutSubviews{
    
    
    [super layoutSubviews];

    [self.topHead_image mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(LCF_SCREEN_WIDTH );
        make.height.mas_equalTo(self.bounds.size.height);
    }];
    
    [self.headGuidance mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo (self);
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(LCF_SCREEN_WIDTH);
        make.height.mas_equalTo(@40);
    }];
    
    [self.collect_shop mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.headGuidance);
        make.leading.equalTo(self.headGuidance).offset(37.5);
    }];
    
    [self.collect_Brand mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo (self.headGuidance);
        make.centerX.equalTo(self.headGuidance);
    }];
    
    [self.collect_Records mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.headGuidance);
        make.trailing.equalTo(self.headGuidance).offset(-37.5);
    }];
    
    [self.heard_icon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.width.height.equalTo(@(100));
        make.centerX.equalTo(self);
    }];
    
    
}

- (UIView *)headGuidance {
    
    if (!_headGuidance) {
        _headGuidance = [[UIView alloc] init];
        _headGuidance.backgroundColor = [UIColor blackColor];
    }
    return _headGuidance;
}

- (UIImageView *)topHead_image{
    
    if (!_topHead_image) {
        
        _topHead_image = [[UIImageView alloc]init];
        [_topHead_image setImage:[UIImage imageNamed:@"background-4"]];
        
    }
    return _topHead_image;
}

- (UILabel *)collect_shop {
    
    if (!_collect_shop) {
        _collect_shop = [[UILabel alloc] init];
        _collect_shop.text = @"收藏的商品";
        _collect_shop.textColor = [UIColor whiteColor];
        _collect_shop.font = [UIFont AvenirWithFontSize:9];
    }
    return _collect_shop;
}

- (UILabel *)collect_Brand {
    
    if (!_collect_Brand) {
        _collect_Brand = [[UILabel alloc] init];
        _collect_Brand.text = @"收藏品牌";
        _collect_Brand.textColor = [UIColor whiteColor];
        _collect_Brand.font = [UIFont AvenirWithFontSize:9];
    }
    return _collect_Brand;
}
- (UILabel *)collect_Records {
    
    if (!_collect_Records) {
        _collect_Records = [[UILabel alloc] init];
        _collect_Records.text = @"浏览记录";
        _collect_Records.textColor = [UIColor whiteColor];
        _collect_Records.font = [UIFont AvenirWithFontSize:9];
    }
    return _collect_Records;
}

- (UIButton *)heard_icon {
    
    if (!_heard_icon) {
        _heard_icon = [UIButton buttonWithType:UIButtonTypeCustom];
        _heard_icon.layer.cornerRadius = 50;
        _heard_icon.clipsToBounds = TRUE;
        [_heard_icon addTarget:self action:@selector(Clickheard_icon:) forControlEvents:UIControlEventTouchUpInside];
        [_heard_icon setImage:[UIImage imageNamed:@"heard"] forState:UIControlStateNormal];
    }
     return  _heard_icon;
    
}

- (void)Clickheard_icon:(UIButton *)sender{
    
    if ([self.delegation  performSelector:@selector(setHeardShareManagerWithPush:) withObject:sender]) {
        [self.delegation performSelector:@selector(setHeardShareManagerWithPush:) withObject:sender];
    }
}

@end
