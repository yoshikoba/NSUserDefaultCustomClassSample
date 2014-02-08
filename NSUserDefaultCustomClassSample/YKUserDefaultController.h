//
//  YKUserDefaultController.h
//  KantoUDONStampRally
//
//  Created by kazukoba on 2012/09/10.
//  Copyright (c) 2012年 WalterAlex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YKUserDefaultController : NSObject
+(void)SetUserDefaultObject:(NSString *)keyName setObject:(id)setObject;
+(void)SetUserDefaultInteger:(NSString *)keyName setInteger:(int)setInteger;
+(void)SetUserDefaultBool:(NSString *)keyName setBool:(BOOL)setBool;
+(id)getUserDefaultObject:(NSString *)keyName;
+(int)getUserDefaultInteger:(NSString *)keyName;
+(BOOL)getUserDefaultBool:(NSString *)keyName;
+(void)deleteUserDefault:(NSString *)keyName;
@end
