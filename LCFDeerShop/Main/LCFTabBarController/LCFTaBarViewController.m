//
//  LCFTaBarViewController.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/11/18.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "LCFTaBarViewController.h"

@interface LCFTaBarViewController ()

@end

static LCFTaBarViewController * Tabar;

@implementation LCFTaBarViewController

+(instancetype)shareTabar{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Tabar = [[self alloc] init];
    });
    
    return  Tabar;
    
}
#warning 比较不懂的方法
-(void)setSelectedIndex:(NSUInteger)selectedIndex{
    
    //判断是否相等,不同才设置
    if (self.selectedIndex != selectedIndex) {
        _lastSelecteIndex = self.selectedIndex;
        NSLog(@"1 OLD:%zi , NEW:%zi",self.lastSelecteIndex,selectedIndex);
    }
    
    [super setSelectedIndex:selectedIndex];
}
-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    //获取选中的item
    NSUInteger tabIndex = [tabBar.items indexOfObject:item];
    if (tabIndex != self.selectedIndex) {
        //设置最近一次变更
        _lastSelecteIndex = self.selectedIndex;
       NSLog(@"2 OLD:%zi , NEW:%zi",self.lastSelecteIndex,tabIndex);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
