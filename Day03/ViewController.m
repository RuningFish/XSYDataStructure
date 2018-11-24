//
//  ViewController.m
//  Day03
//  栈和队列
//  Created by admin on 18/11/23.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import "ViewController.h"
#import "XSYStack.h"
#import "XSYQueue.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XSYStack * stack = [XSYStack xsy_stackWithLength:20];
    [stack push:@"1"];
    [stack push:@"2"];
    [stack push:@"3"];
     BOOL result =  [stack isFull];
    
    NSInteger stackL = stack.length;
    for (int i = 0; i < stackL; i ++) {
        [stack pop];
    }
    
    XSYQueue * queue = [XSYQueue xsy_queue];
    [queue insert:@"a"];
    [queue insert:@"b"];
    [queue insert:@"c"];
    
    NSInteger queueL = queue.length;
    for (int i = 0; i < queueL; i ++) {
        [queue pop];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
