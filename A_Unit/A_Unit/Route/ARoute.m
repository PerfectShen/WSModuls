//
//  ARoute.m
//  A_Unit
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "ARoute.h"

@implementation ARoute

- (instancetype)init{

    if (self = [super init]) {
        
        self.currentModuleName = @"A";
    }
    return self;
}

+ (void)tourlString:(NSString *)urlstring userInfo:(NSDictionary *)userInfo{

    
    //解析处理，如果可以处理则处理跳转，如果不能处理再向上发送
//    [[[self class] shareRoute] parserUrl];
    WSRoute *route = [[self class] shareRoute];
    route.urlString = urlstring;
    route.userInfo = userInfo;
    [route parserUrl];

    
}

- (void)tofile:(NSString *)filePath{

//    MainRoute
}

@end
