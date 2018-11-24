//
//  XSYStack.m
//  XSYDataStructure
//
//  Created by admin on 18/11/23.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import "XSYStack.h"

@interface XSYStack ()
@property (nonatomic, strong) NSMutableArray * stack;
@property (nonatomic, assign) NSInteger top;
@property (nonatomic, assign) NSInteger stackLength;
@end

@implementation XSYStack
+ (instancetype)stack{
    return [self xsy_stackWithLength:30];
}

+ (instancetype)xsy_stackWithLength:(NSInteger)length{
    return [[XSYStack alloc] xsy_initWithLength:length];
}

- (instancetype)xsy_initWithLength:(NSInteger)length{
    if (self == [super init]) {
        self.top = -1;
        self.stackLength = length;
    }
    return self;
}

- (void)push:(id)obj{
    // 判断是否溢出
    if(self.stackLength == self.stack.count) {
        NSLog(@"This stack is full！");
        return;
    }
    if (obj) {
        [self.stack addObject:obj];
    }
    self.top++;
    NSLog(@"stack push ---> %@",obj);
}

- (void)pop{
    if (self.top == -1) return;
    NSLog(@"stack pop ---> %@",self.stack[self.top]);
    [self.stack removeObjectAtIndex:self.top];
    self.top--;
    
}

- (BOOL)isEmpty{
    return self.stack.count > 0?NO:YES;
}

- (BOOL)isFull{
    return self.stack.count == self.stackLength?YES:NO;
}

- (NSInteger)length{
    return self.stack.count;
}

- (NSMutableArray *)stack{
    if(!_stack){
        _stack = [NSMutableArray array];
    }
    return _stack;
}
@end

