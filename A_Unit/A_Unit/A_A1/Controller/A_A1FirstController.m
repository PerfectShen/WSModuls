//
//  A_A1FirstController.m
//  A_Unit
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "A_A1FirstController.h"

@interface A_A1FirstController ()

@property (nonatomic,strong) UIButton *button;

@end

@implementation A_A1FirstController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.button];
    
    self.navigationItem.title = @"A";
    
    
}

#pragma mark - getter
- (UIButton *)button{

    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(0, 100, self.view.frame.size.width, 40);
        [_button setTitle:@"跳转" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
  
    return _button;
    
}

- (void)buttonAction:(UIButton *)sender {
    
    NSLog(@".%@",self.view.window);
    [ARoute tourlString:@"wslocal://B/first" userInfo:@{}];

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
