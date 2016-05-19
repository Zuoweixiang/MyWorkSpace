//
//  ZWKeyPathExample.m
//  MyWorkSpace
//
//  Created by 向的MacBook on 16/5/19.
//  Copyright © 2016年 yoyo. All rights reserved.
//

#import "ZWKeyPathExample.h"
//@avg， @count ， @max ， @min ，@sum，


@implementation ZWKeyPathExample


/**
 *  avg =  12,
 count =  5,
 max =  14,
 min = 10,
 sun = 60,
 ages = (
 10,
 11,
 12,
 13,
 14
 )
 */
+(void)keyPathTest
{
    
    NSMutableArray * mutArr= [NSMutableArray array];
    for (int i = 0; i<5; i++) {
        
        People *peo=[People  peopleWithAge:i+10];
        
        [mutArr addObject:peo];
    }
    
    People *peo = [[People alloc]init];
    
    //[peo setValue:mutArr forKey:@"members"];
    peo.members = mutArr;
    id avg = [peo valueForKeyPath:@"members.@avg.age"];
    id count = [peo valueForKeyPath:@"members.@count"];
    id max = [peo valueForKeyPath:@"members.@max.age"];
    id min = [peo valueForKeyPath:@"members.@min.age"];
    id sun = [peo  valueForKeyPath:@"members.@sum.age"];
    
    NSArray *ages = [peo valueForKeyPath:@"members.age"];
    
    NSLog(@" \navg =  %@, \ncount =  %@, \nmax =  %@, \nmin = %@, \nsun = %@, \nages = %@",avg,count,max,min,sun,ages);
    
    
    
}

@end

@implementation People

+(People *)peopleWithAge:(NSInteger)age
{
    People *peo = [[People alloc]init];
    peo.age =age;
    
    return peo;

}
@end

