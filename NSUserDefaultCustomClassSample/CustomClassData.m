//
//  CustomClassData.m
//  NSUserDefaultCustomClassSample
//
//  Created by kazukoba on 2014/02/08.
//  Copyright (c) 2014年 WalterAlex. All rights reserved.
//

#import "CustomClassData.h"

@implementation CustomClassData
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.age forKey:@"age"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self){
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
    }
    return self;
}

@end
