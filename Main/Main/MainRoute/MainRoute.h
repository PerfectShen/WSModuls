//
//  MainRoute.h
//  Main
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "WSRoute.h"
#import "WSTabBarController.h"
#import "ARoute.h"
#import "BRoute.h"


@interface MainRoute : WSRoute

@property (nonatomic,strong) WSTabBarController* tabBarController;

+ (void)config;

@end
