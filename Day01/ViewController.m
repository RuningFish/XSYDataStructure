//
//  ViewController.m
//  Day01
//  数组
//  Created by piyingke on 2018/11/21.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import "ViewController.h"
#import "XSYArray.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XSYArray * array0 = [XSYArray array];
    [array0 xsy_insertWithObject:@"a"];
    [array0 xsy_insertWithObject:@"b"];
    [array0 xsy_insertWithObject:@"c"];
    NSLog(@"array0 ---- %@",array0);
    [array0 xsy_removeWithObject:@"d"];
    [array0 xsy_updateWithObject:@"d" index:2];
    id obj = nil;
    [array0 xsy_insertWithObject:obj];
    NSInteger idx1 = [array0 xsy_searchWithObject:@"1"];
    NSInteger idx2 = [array0 xsy_searchWithObject:@"b"];
    NSLog(@"array0 ---- %@ , %ld , %ld",array0,idx1,idx2);
    
    XSYArray * array1 = [[XSYArray alloc] xsy_initWithObjects:@"1",@"2",@"3",@"4",nil];
    NSLog(@"array1 ----- %@",array1);
    
    [array1 xsy_enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj isEqualToString:@"3"]) {
            *stop = YES;
        }
        NSLog(@"array1 --- obj %@, idx %ld , stop %p",obj,idx,stop);
    }];
    
    
    [array1 xsy_removeAllObjects];
    NSLog(@"array1 ----- %@",array1);
}


@end
