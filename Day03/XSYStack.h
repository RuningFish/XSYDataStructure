//
//  XSYStack.h
//  XSYDataStructure
//
//  Created by admin on 18/11/23.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSYStack : NSObject
// 栈中元素个数
@property (nonatomic, assign, readonly) NSInteger length;
- (instancetype)xsy_initWithLength:(NSInteger)length;
+ (instancetype)xsy_stackWithLength:(NSInteger)length;
+ (instancetype)stack;
// 入栈
- (void)push:(id)obj;
// 出栈
- (void)pop;
// 是否为空
- (BOOL)isEmpty;
// 是否满了
- (BOOL)isFull;
@end
