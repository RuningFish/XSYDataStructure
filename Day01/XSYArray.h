//
//  XSYArray.h
//  XSYDataStructure
//
//  Created by piyingke on 2018/11/21.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface XSYArray : NSObject<NSCopying, NSMutableCopying>
// 数组的长度
@property (nonatomic, assign, readonly) NSInteger length;
+ (instancetype)array;
+ (instancetype)xsy_arrayWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
+ (instancetype)xsy_arrayWithArray:(NSArray *)array;
- (instancetype)xsy_initWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
- (instancetype)xsy_initWithArray:(NSArray*)array;

- (void)xsy_insertWithObject:(id)obj;
- (void)xsy_removeWithObject:(id)obj;
- (NSInteger)xsy_searchWithObject:(id)obj;
- (void)xsy_updateWithObject:(id)obj index:(NSInteger)idx;
- (NSArray *)xsy_allObjects;
- (void)xsy_removeAllObjects;
- (id)xsy_objectWithIndex:(NSInteger)idx;

- (void)xsy_enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL * stop))block;
@end
