//
//  CustomClassData.h
//  NSUserDefaultCustomClassSample
//
//  Created by kazukoba on 2014/02/08.
//  Copyright (c) 2014年 WalterAlex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomClassData : NSObject<NSCoding>

@property (strong , nonatomic)NSString *name;
@property (strong , nonatomic)NSString *age;

@end
