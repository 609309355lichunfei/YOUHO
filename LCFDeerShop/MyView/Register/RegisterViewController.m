//
//  RegisterViewController.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/13.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "RegisterViewController.h"
#import "LCFMyViewController.h"
@interface RegisterViewController ()
@property (nonatomic,retain)    UIImageView * backgroundImage; //背景图片
@property (nonatomic,retain)    UIView      * BG_view;  //背景view
@property (nonatomic,retain)    UIButton    * leftnaviga; //返回按钮
@end

@implementation RegisterViewController

//隐藏Navigation
//-(void)viewWillAppear:(BOOL)animated{
//    
//    [super viewWillAppear:animated];
//    
//   self.navigationController.navigationBarHidden= YES;
//    
//}


-(UIImageView *)backgroundImage{
    
    if (!_backgroundImage) {
        _backgroundImage = [[UIImageView alloc] init];
        [_backgroundImage setImage:[UIImage imageNamed:@"011e07585a579ea801219c77d12349.jpg@900w_1l_2o_100sh"]];
    }
    _backgroundImage.frame = CGRectMake(0, 0, LCF_SCREEN_WIDTH, LCF_SCREEN_HEIGHT);
    return _backgroundImage;
}
-(UIView *)BG_view{
    
    if (!_BG_view) {
        _BG_view = [[UIView alloc] init];
        _BG_view.alpha = .35;
        _BG_view.backgroundColor = [UIColor blackColor];
    }
    _BG_view.frame = CGRectMake(0, 0, LCF_SCREEN_WIDTH, LCF_SCREEN_HEIGHT);
    return  _BG_view;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationItem.title = @"注册";
    [self.view addSubview:self.backgroundImage];
    [self.backgroundImage addSubview:self.BG_view];
    
    
    [self setLayoutView];
 
    
}
// 布局画面
-(void)setLayoutView{
    
    UIButton * bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.titleLabel.textAlignment = NSTextAlignmentCenter;
    [bt setImage:[UIImage imageNamed:@"left_001"] forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(ClickPop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    self.leftnaviga = bt;
    [bt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BG_view).offset(41);
        make.leading.equalTo(self.BG_view).offset(18);
        make.height.width.equalTo(@(31));
    }];
    
    UILabel * titleLabel = [[UILabel alloc]init];
    titleLabel.text = @"注册DeerShop!!";
    titleLabel.font = XNFont(14);
    titleLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(bt);
        make.centerX.equalTo(self.BG_view);
    }];
    
    UIButton * bt_rigt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt_rigt.titleLabel.textAlignment = NSTextAlignmentCenter;
    [bt_rigt setImage:[UIImage imageNamed:@"right_icon"] forState:UIControlStateNormal];
    [bt_rigt addTarget:self action:@selector(ClickPopRight:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt_rigt];
    [bt_rigt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BG_view).offset(41);
        make.trailing.equalTo(self.BG_view).offset(-18);
        make.height.width.equalTo(@(31));
    }];
    
    
}

//pop

-(void)ClickPop:(UIButton *)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
}
//返回我的账号主页
-(void)ClickPopRight:(UIButton *)sender {
   
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
