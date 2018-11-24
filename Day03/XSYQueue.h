//
//  XSYQueue.h
//  XSYDataStructure
//
//  Created by admin on 18/11/23.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSYQueue : NSObject
// 队列中元素个数
@property (nonatomic, assign, readonly) NSInteger length;
+ (instancetype)xsy_queue;
- (void)insert:(id)obj;
- (void)pop;
// 是否为空
- (BOOL)isEmpty;
@end
