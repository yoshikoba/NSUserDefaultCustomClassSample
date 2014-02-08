//
//  CustomClassArray.h
//  NSUserDefaultCustomClassSample
//
//  Created by kazukoba on 2014/02/08.
//  Copyright (c) 2014年 WalterAlex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomClassArray : NSObject
@property (strong , nonatomic)NSMutableArray *listArray;

-(void)addArrayObject:(id)object;

@end
