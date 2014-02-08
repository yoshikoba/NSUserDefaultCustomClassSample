//
//  ViewController.m
//  NSUserDefaultCustomClassSample
//
//  Created by kazukoba on 2014/02/08.
//  Copyright (c) 2014年 WalterAlex. All rights reserved.
//

#import "ViewController.h"
#import "CustomClassData.h"
#import "YKUserDefaultController.h"
#import "CustomClassArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //データ一つだけ保存
	//データ保存
    CustomClassData *customData = [[CustomClassData alloc]init];
    customData.name = @"山田";
    customData.age = @"20";
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:customData];
    [YKUserDefaultController SetUserDefaultObject:@"Test" setObject:data];
    
    //データ読み出し
    NSData *readData = [YKUserDefaultController getUserDefaultObject:@"Test"];
    CustomClassData *readCustomData = [NSKeyedUnarchiver unarchiveObjectWithData:readData];
    NSLog(@"name is %@(%@才)",readCustomData.name,readCustomData.age);
    
    //配列にデータを入れる
    CustomClassArray *customArray = [CustomClassArray new];
    CustomClassData *customData2 = [CustomClassData new];
    customData2.name = @"佐藤";
    customData2.age = @"30";
    [customArray addArrayObject:customData];
    [customArray addArrayObject:customData2];
    
    
    NSData *listData = [NSKeyedArchiver archivedDataWithRootObject:customArray];
    [YKUserDefaultController SetUserDefaultObject:@"Array" setObject:listData];
    
    NSData *readList = [YKUserDefaultController getUserDefaultObject:@"Array"];
    CustomClassArray *readArray = [NSKeyedUnarchiver unarchiveObjectWithData:readList];
    
    for (CustomClassData *testData in readArray.listArray) {
          NSLog(@"name2 is %@(%@才)",testData.name,testData.age);
    }
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
