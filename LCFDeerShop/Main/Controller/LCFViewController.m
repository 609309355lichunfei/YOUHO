//
//  LCFViewController.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/11/18.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "LCFViewController.h"

@interface LCFViewController ()

@end

@implementation LCFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UINavigationBar* navBar = self.navigationController.navigationBar;
    [navBar setTranslucent:YES];
    navBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor blackColor]};
    [navBar setBackgroundImage:[UIImage imageNamed:@"patternNav"] forBarMetrics:UIBarMetricsDefault];
    [navBar setShadowImage:[[UIImage alloc] init]];
    
    UIButton * lefItemBt = [UIButton buttonWithType:UIButtonTypeCustom];
    lefItemBt.frame = CGRectMake(0, 0, 20, 20);
    [lefItemBt addTarget:self action:@selector(actionlefItemBt) forControlEvents:UIControlEventTouchUpInside];
    [lefItemBt setImage:[UIImage imageNamed:@"1481634799_left"] forState:UIControlStateNormal];
    [lefItemBt setImage:[UIImage imageNamed:@"1481634799_left"] forState:UIControlStateHighlighted];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:lefItemBt];
}
-(void)actionlefItemBt {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
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
