//
//  MainRoute.m
//  Main
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "MainRoute.h"

@interface MainRoute ()

//@property (nonatomic,strong) 

@end

@implementation MainRoute


+ (void)config{

    MainRoute *route = [MainRoute shareRoute];
    ARoute *aroute = [ARoute shareRoute];
    BRoute *broute = [BRoute shareRoute];
    aroute.mainRoute = route;
    broute.mainRoute = route;
    
}

- (instancetype)init{

    if (self = [super init]) {
        
        self.currentModuleName = @"Main";
    }
    return self;
}

- (void)tofile:(NSString *)filePath{

    
}


- (void)toModule:(NSString *)module file:(NSString *)fileName{


    if ([module isEqualToString:@"A"]) {
        
        self.tabBarController.selectedIndex = 0;
        [[ARoute shareRoute] tofile:fileName];
    }
    
    if ([module isEqualToString:@"B"]) {
        self.tabBarController.selectedIndex = 1;
        [[BRoute shareRoute] tofile:fileName];
    }
    
}
@end
