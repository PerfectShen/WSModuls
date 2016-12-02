//
//  BRoute.m
//  B_Unit
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "BRoute.h"

@implementation BRoute

- (instancetype)init{

    if (self = [super init]) {
        
        self.currentModuleName = @"B";
    }
    return  self;
}


- (void)tofile:(NSString *)filePath{

    NSLog(@"跳转到  这里 %@",filePath);

}

@end
