//
//  YKUserDefaultController.m
//  KantoUDONStampRally
//
//  Created by kazukoba on 2012/09/10.
//  Copyright (c) 2012年 WalterAlex. All rights reserved.
//

#import "YKUserDefaultController.h"

@implementation YKUserDefaultController
+(void)SetUserDefaultObject:(NSString *)keyName setObject:(id)setObject{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:setObject forKey:keyName];
    [defaults synchronize];
}
+(void)SetUserDefaultInteger:(NSString *)keyName setInteger:(int)setInteger{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:setInteger forKey:keyName];
    [defaults synchronize];
}
+(void)SetUserDefaultBool:(NSString *)keyName setBool:(BOOL)setBool{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:setBool forKey:keyName];
    [defaults synchronize];
}


+(id)getUserDefaultObject:(NSString *)keyName{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *userDefaultObject = [defaults objectForKey:keyName];
    return userDefaultObject;
}

+(int)getUserDefaultInteger:(NSString *)keyName{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int userDefaultInteger = [defaults integerForKey:keyName];
    return userDefaultInteger;
}

+(BOOL)getUserDefaultBool:(NSString *)keyName{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL userDefaultBool = [defaults boolForKey:keyName];
    return userDefaultBool;
}
+(void)deleteUserDefault:(NSString *)keyName{
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:keyName];
    [defaults synchronize];
}
@end
