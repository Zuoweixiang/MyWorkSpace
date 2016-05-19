//
//  ZWKeyPathExample.h
//  MyWorkSpace
//
//  Created by 向的MacBook on 16/5/19.
//  Copyright © 2016年 yoyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZWKeyPathExample : NSObject
/**
 *  keyPath运算符测试.
 */
+(void)keyPathTest;


@end

@interface People : NSObject

@property(nonatomic,assign) NSInteger age;
@property(nonatomic,strong) NSMutableArray *members;

+(People *)peopleWithAge:(NSInteger)age;
@end