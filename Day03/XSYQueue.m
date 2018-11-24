//
//  XSYQueue.m
//  XSYDataStructure
//
//  Created by admin on 18/11/23.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import "XSYQueue.h"

@interface XSYQueue ()
@property (nonatomic, strong) NSMutableArray * queue;
// 对头
@property (nonatomic, assign) NSInteger front;
// 对尾
@property (nonatomic, assign) NSInteger end;
@end

@implementation XSYQueue
+ (instancetype)xsy_queue{
    return [[self alloc] init];
}

- (instancetype)init{
    if (self == [super init]) {
        self.front = 0;
        self.end = -1;
    }
    return self;
}

- (NSMutableArray *)queue{
    if (!_queue) {
        _queue = [NSMutableArray array];
    }
    return _queue;
}

- (void)insert:(id)obj{
    if (obj) {
        [self.queue addObject:obj];
        self.end++;
        NSLog(@"queue insert ---> %@",obj);
    }
}

- (void)pop{
    NSLog(@"queue pop ---> %@",self.queue[self.front]);
    [self.queue removeObjectAtIndex:self.front];
    self.end--;
    if(self.end == 0) self.end = -1;
}

- (BOOL)isEmpty{
    return self.queue.count > 0?NO:YES;
}

- (NSInteger)length{
    return self.queue.count;
}
@end
