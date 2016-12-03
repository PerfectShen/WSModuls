//
//  WSTabBarController.m
//  Main
//
//  Created by 王燊 on 16/12/3.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "WSTabBarController.h"
#import "WSNavigationController.h"
#import "A_A1FirstController.h"
#import "B_B1FirstController.h"


//设置路由 -
@interface WSTabBarController ()

@end

@implementation WSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self _addChildViewControllers];
 
    [MainRoute shareRoute].tabBarController = self;
}


- (void)_addChildViewControllers{
    
    A_A1FirstController *aVC = [[A_A1FirstController alloc] init];
    WSNavigationController *aNV = [[WSNavigationController alloc] initWithRootViewController:aVC];
    [ARoute shareRoute].navigationController = aNV;
    
    B_B1FirstController *bVC = [[B_B1FirstController alloc] init];
    WSNavigationController *bNV = [[WSNavigationController alloc] initWithRootViewController:bVC];
    [BRoute shareRoute].navigationController = bNV;
    self.viewControllers = @[aNV,bNV];
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
