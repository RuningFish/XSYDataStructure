//
//  ViewController.m
//  Day02
//  简单排序
//  Created by piyingke on 2018/11/22.
//  Copyright © 2018年 piyingke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray  * sortArr = @[@(49),@(38),@(65),@(97),@(76),@(13),@(27),@(33)];
    
    [self bubbleSort:sortArr];
    [self insertSort:sortArr];
    [self selectSort:sortArr];
}

#pragma mark - 冒泡排序
- (NSArray *)bubbleSort:(NSArray *)array{
    NSMutableArray * temp = [NSMutableArray arrayWithArray:array];
    for(int i = 0;i < temp.count;i++){
        for (int j = 0 ; j < temp.count - 1 - i; j++) {
            if(temp[j] > temp[j+1]){
                id tmp = temp[j];
                temp[j] = temp[j+1];
                temp[j+1] = tmp;
            }
        }
    }
    NSLog(@"冒泡排序 ------------- > %@",temp);
    return temp;
}

#pragma mark - 插入排序
- (NSArray *)insertSort:(NSArray *)array{
    NSMutableArray * temp = [NSMutableArray arrayWithArray:array];
    for(int i = 1;i < temp.count;i++){
        int j = i;
        while (j>0 && temp[j]<temp[j-1]) {
            id tmp = temp[j];
            temp[j] = temp[j-1];
            temp[j-1] = tmp;
            j--;
        }
    }
    NSLog(@"插入排序 ------------- > %@",temp);
    return temp;
}

#pragma mark - 选择排序
- (NSArray *)selectSort:(NSArray *)array{
    NSMutableArray * temp = [NSMutableArray arrayWithArray:array];
    for(int i = 1;i < temp.count;i++){
        int min = i;
        for (int j = i+1; j < temp.count; j++) {
            if (temp[j] < temp[i]) {
                min = j;
            }
        }
        if (min != i) {
            id tmp = temp[i];
            temp[i] = temp[min];
            temp[min] = tmp;
        }
    }
    NSLog(@"选择排序 ------------- > %@",temp);
    return temp;
}
@end
