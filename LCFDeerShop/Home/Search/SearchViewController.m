//
//  SearchViewController.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/11/21.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "SearchViewController.h"
#import "UIImage+SearchHeight.h"
@interface SearchViewController ()<UISearchBarDelegate>

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = nil;
    /* 隐藏Navvigation返回按钮*/
    self.navigationItem.hidesBackButton = YES;
    [self addDidloadItem];
    [self addSearch];
  
  
    
}


-(void)addDidloadItem{
    UIButton * rightBt = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBt.titleLabel.font = XNFont(14.);
    [rightBt setTitle:@"取消" forState:UIControlStateNormal];
    [rightBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightBt addTarget:self action:@selector(rightBarButtonItemClick) forControlEvents:UIControlEventTouchUpInside];
    rightBt.bounds = CGRectMake(0, 0, 40, 30);
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBt];
    
}
-(void)addSearch{
    
    UISearchBar * searchBar = [[UISearchBar alloc] init];
    searchBar.placeholder = @"棉衣";
    searchBar.delegate = self;
    searchBar.frame = CGRectMake(0, 0, LCF_SCREEN_WIDTH - 80, 30);
    
    UIImage * searchBarBackground = [UIImage GetImageWithColor:YM_RGBA(238, 238, 238, 1) addHeight:30.];
    //为搜索框设置灰色背景
    [searchBar setSearchFieldBackgroundImage:searchBarBackground forState:UIControlStateNormal];
    self.navigationItem.titleView = searchBar;
    
}

#pragma mark- Event

-(void)rightBarButtonItemClick{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
