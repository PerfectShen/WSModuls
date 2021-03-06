//
//  MainRoute.h
//  MainRoute
//
//  Created by wangshen on 16/12/2.
//  Copyright © 2016年 LP_Macmini. All rights reserved.
//


#import <Foundation/Foundation.h>

//（需要跳转协议） 参考 URL 组成

// wslocal://[模块]/[控制器]


extern NSString * const WSLocalProtoclolName; //本地跳转协议头
//extern NSString *WSLocalProtoclolName; //本地跳转协议头
//extern NSString *WSLocalProtoclolName; //本地跳转协议头


#define WSUrlBulder(protocol,Module,file)  [NSString stringWithFormat:@"%@://%@/%@"]





//总 路由
//需要被其他组件引用不需要引用其他组件
@interface MainRoute : NSObject


@property (nonatomic,copy) NSString *currentModuleName; //当前模块名


@property (nonatomic,copy) NSString *urlString;
@property (nonatomic,strong) NSDictionary *userInfo;


//单例
+ (instancetype)shareRoute;


//跳转
+ (void)tourlString:(NSString *)urlstring userInfo:(NSDictionary *)userInfo;



//解析  url
- (NSDictionary *)parserUrl;


// 根据文件路径跳转
- (void)tofile:(NSString *)filePath;

@end
