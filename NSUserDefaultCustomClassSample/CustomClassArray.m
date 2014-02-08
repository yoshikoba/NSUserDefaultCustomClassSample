//
//  CustomClassArray.m
//  NSUserDefaultCustomClassSample
//
//  Created by kazukoba on 2014/02/08.
//  Copyright (c) 2014年 WalterAlex. All rights reserved.
//

#import "CustomClassArray.h"

@implementation CustomClassArray
- (id)init
{
    self = [super init];
    if (self) {
        self.listArray = [NSMutableArray new];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.listArray forKey:@"list"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self){
        self.listArray = [aDecoder decodeObjectForKey:@"list"];
    }
    return self;
}

-(void)addArrayObject:(id)object{
    [self.listArray addObject:object];
}
@end
