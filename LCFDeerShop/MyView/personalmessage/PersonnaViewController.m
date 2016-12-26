//
//  PersonnaViewController.m
//  LCFDeerShop
//
//  Created by 李春菲 on 16/12/23.
//  Copyright © 2016年 lichunfei. All rights reserved.
//

#import "PersonnaViewController.h"
#import "ActionSheetPicker.h"
#import "AbstractActionSheetPicker+Interface.h"
@interface PersonnaViewController ()<UITableViewDelegate,UITableViewDataSource>
@property   (nonatomic ,retain) UITableView     * tableview;
@end

@implementation PersonnaViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableview];
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.title = @"个人信息设置";
 
    UIButton * lefItemBt = [UIButton buttonWithType:UIButtonTypeCustom];
    lefItemBt.frame = CGRectMake(0, 0, 20, 20);
    [lefItemBt addTarget:self action:@selector(actionlefItemBt1) forControlEvents:UIControlEventTouchUpInside];
    [lefItemBt setImage:[UIImage imageNamed:@"1481634799_left"] forState:UIControlStateNormal];
    [lefItemBt setImage:[UIImage imageNamed:@"1481634799_left"] forState:UIControlStateHighlighted];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:lefItemBt];

  
}
-(void)actionlefItemBt1 {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (UITableView *)tableview {
    
    if (!_tableview) {
        _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 5, LCF_SCREEN_WIDTH, LCF_SCREEN_HEIGHT - 44) style:UITableViewStyleGrouped];
        _tableview.delegate = self;
        _tableview.dataSource = self;
        _tableview.rowHeight = 44;
    }
    
    return _tableview;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 4 ;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return 4;
    }
    return 2;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell2"];
    }
    cell.textLabel.font = [UIFont AmericanTypewriterBoldFontSize:12.];
    cell.detailTextLabel.font = [UIFont systemFontOfSize:12.];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //    self.selectionStyle = UITableviewCellSelectionStyleNoe
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"我的头像";
            
        }
        
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            cell.textLabel.text = @"昵称:";
            cell.detailTextLabel.text =@"会喷水的大象";
        }
        if (indexPath.row == 1) {
            cell.textLabel.text = @"性别:";
            cell.detailTextLabel.text = @"男";
        }
        if (indexPath.row == 2) {
            cell.textLabel.text = @"年龄";
            cell.detailTextLabel.text = @"25";
        }if (indexPath.row == 3) {
            cell.textLabel.text = @"生日";
        }if (indexPath.row == 4) {
            cell.textLabel.text = @"二维码";
        }
        
    }else if (indexPath.section == 2){
        if (indexPath.row == 0) {
            cell.textLabel.text = @"身高";
        }if (indexPath.row == 1) {
            cell.textLabel.text = @"体重";
        }
    }else if (indexPath.section == 3){
        if (indexPath.row == 0) {
            cell.textLabel.text = @"地址管理";
        }if (indexPath.row == 1) {
            cell.textLabel.text = @"账号绑定";
        }
    }
    
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        if (indexPath.row == 3) {
            
        }
    }else if (indexPath.section == 1){
        if (indexPath.row == 2) {
           
        }
        
    }else if (indexPath.section == 2){
        if (indexPath.row == 0) {
            NSMutableArray *dataArr = [[NSMutableArray alloc] initWithObjects:@"140",@"150",@"160",@"170",@"180", nil];
            
            ActionSheetStringPicker *actionPicker = [[ActionSheetStringPicker alloc]initWithTitle:@"身高" rows:dataArr initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
                //*********一组点击确认按钮做处理************
                
                cell.detailTextLabel.text = selectedValue;
                NSLog(@"身高---------%@",selectedValue);
                
                
            } cancelBlock:^(ActionSheetStringPicker *picker) {
                
            } origin:self.view];
            [actionPicker customizeInterface];
            [actionPicker showActionSheetPicker];
        }
        
    }
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
