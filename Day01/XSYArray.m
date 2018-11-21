//
//  XSYArray.m
//  XSYDataStructure
//
//  Created by piyingke on 2018/11/21.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import "XSYArray.h"
@interface XSYArray ()
@property (nonatomic, strong) NSMutableArray * data;
@end
@implementation XSYArray

+ (instancetype)array{
    return [[self alloc] xsy_initWithArray:@[]];
}
+ (instancetype)xsy_arrayWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION{
    va_list argList;
    NSMutableArray * temp = [NSMutableArray array];
    if (firstObj) {
        [temp addObject:firstObj];
        va_start(argList, firstObj);
        id obj;
        while ((obj = va_arg(argList, id))) {
            [temp addObject:obj];
        }
    }
    va_end(argList);
    return [[self alloc] xsy_initWithArray:temp];
}
+ (instancetype)xsy_arrayWithArray:(NSArray *)array{
    return [[self alloc] xsy_initWithArray:array];
}
- (instancetype)xsy_initWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION{
    //VA_LIST 是在C语言中解决变参问题的一组宏
    va_list argList;
    if (firstObj) {
        [self.data addObject:firstObj];
        // VA_START宏，获取可变参数列表的第一个参数的地址,在这里是获取firstObj的内存地址,这时argList的指针 指向firstObj
        va_start(argList, firstObj);
        // 临时指针变量
        id obj;
        // VA_ARG宏，获取可变参数的当前参数，返回指定类型并将指针指向下一参数
        // 首先 argList的内存地址指向的fristObj将对应储存的值取出,如果不为nil则判断为真,将取出的值放在数组中,
        // 并且将指针指向下一个参数,这样每次循环argList所代表的指针偏移量就不断下移直到取出nil
        while ((obj = va_arg(argList, id))) {
            [self.data addObject:obj];
        }
    }
    // 清空列表
    va_end(argList);
    return [self init];
}
- (instancetype)xsy_initWithArray:(NSArray*)array{
    _data = [NSMutableArray arrayWithArray:array];
    return [self init];
}

- (instancetype)init{
    if (self == [super init]) {
       
    }
    return self;
}

- (void)xsy_insertWithObject:(id)obj{
    if (obj) {
        [self.data addObject:obj];
    }
    else{
        NSLog(@"insert object nil");
    }
}

- (void)xsy_removeWithObject:(id)obj{
    if (obj && [self.data containsObject:obj]) {
        [self.data removeObject:obj];
        NSLog(@"delete %@ success!",obj);
    }
    else{
        NSLog(@"This %@ is not exist!",obj);
    }
}

-(NSInteger)xsy_searchWithObject:(id)obj{
    NSInteger idx = -1;
    if (obj && [self.data containsObject:obj]) {
       idx = [self.data indexOfObject:obj];
    }
    else{
        NSLog(@"This %@ is not exist!",obj);
    }
    return idx;
}

- (void)xsy_updateWithObject:(id)obj index:(NSInteger)idx{
    if (obj && (idx >= 0 && idx < self.data.count)) {
        [self.data replaceObjectAtIndex:idx withObject:obj];
    }
    
}

- (NSArray *)xsy_allObjects{
    return self.data;
}

- (void)xsy_removeAllObjects{
    [self.data removeAllObjects];
}

- (id)xsy_objectWithIndex:(NSInteger)idx{
    if (idx >= 0 && idx < self.data.count) {
        return [self.data objectAtIndex:idx];
    }
    return nil;
}

- (void)xsy_enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL * stop))block{
    NSMutableArray * temp = self.data;
    [temp enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (block) {
            block(obj,idx,stop);
        }
    }];
}

- (NSMutableArray *)data{
    if (!_data) {
        _data = [NSMutableArray array];
    }
    return _data;
}

- (NSInteger)length{
    return self.data.count;
}

- (NSString *)description{
    NSMutableString * mString = [NSMutableString stringWithString:@"["];
    for (id obj in self.data) {
        [mString appendString:[NSString stringWithFormat:@" %@,",obj]];
    }
    [mString appendString:@"]"];
    return mString;
}
@end
