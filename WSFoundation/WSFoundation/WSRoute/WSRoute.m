//
//  WSRoute.m
//  WSFoundation
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//

#import "WSRoute.h"

extern NSString * const WSLocalProtoclolName = @"wslocal"; //本地跳转协议头


@implementation WSRoute

+ (instancetype)shareRoute{
    
    static id route = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        route = [[[self class] alloc] init];
    });
    return route;
    
}

- (instancetype)init{
    
    if (self = [super init]) {
        
    }
    return self;
}


+ (void)tourlString:(NSString *)urlstring userInfo:(NSDictionary *)userInfo{
    
    
    //解析处理，如果可以处理则处理跳转，如果不能处理再向上发送
    WSRoute *route = [[self class] shareRoute];
    route.urlString = urlstring;
    route.userInfo = userInfo;
    [route parserUrl];

    
}


//解析  url
- (NSDictionary *)parserUrl{
    
    NSArray *array = [self.urlString componentsSeparatedByString:@"://"];
    NSString *protolName = [array firstObject];
    NSString *subUrl = [array lastObject];
    NSArray *lastArray = [subUrl componentsSeparatedByString:@"/"];
    NSString *moduleName = [lastArray firstObject];
    NSString *filename = [lastArray lastObject];
    
    
    if ([protolName isEqualToString:WSLocalProtoclolName]) {
        
        NSLog(@"本地跳转");
        
        if ([self.currentModuleName isEqualToString:moduleName]) {
            //本模块之间跳转
            NSLog(@"同一个模块之间跳转");
            [self tofile:filename];
            
        }else{
            //上面的模块处理
            NSLog(@"跨模块跳转");
           // [self.mainRoute tofile:filename];
            [self.mainRoute toModule:moduleName file:filename];
        }
    }else{
        
        NSLog(@"其他跳转");
    }
    return nil;
}


@end
