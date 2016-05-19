//
//  C_Example.m
//  MyWorkSpace
//
//  Created by 向的MacBook on 16/5/19.
//  Copyright © 2016年 yoyo. All rights reserved.
//

#import "C_Example.h"

@implementation C_Example

/**
 
 1440480656 , 1440480656 , 1440480676
 2 , 5

 
 *   从以上输出我们可以看出：数组名和数组名取地址在数值上是相同的，均表示数组第一个元素的地址。但是二者的颗粒度不同。
 当数组是一维数组时，数组名是以一个数组元素为颗粒度，表现为“当数组名加1时，这里的1表示一个数组元素单元”，例子中的数组元素为整数，所以数组名加1时地址加4；而数组名取地址&以整个数组为颗粒度，表现为“当数组名取地址&加1时，这里的1是表示整个数组单元”，例子中的数组为有5个元素的整型数组，所以数组名取地址&加1时，地址加20.
 当数组是二维数组时，数组名array、array[0]、&array[0][0]以及数组名取地址&在数值上是相同的，同样各个之间的颗粒度不同。其中array[0]以及 &array[0][0] 的颗粒度相同，均是以一个数组元素为颗粒度，所以它们加1后，地址加4；而数组名和数组名取地址&颗粒度不同，前者以一行元素为颗粒度，后者以整个数组单元为颗粒度，所以前者加1，地址加3*4，后者加1，地址加6*4.
 
 */
+(void)array{
    
    int32_t a[5] = {1,2,3,4,5};
    
    NSInteger *ptr = *(&a +1);
    
    NSInteger array[2][2] = {1,2,3,4,5,6};
    
    printf(" %d , %d , %d\n",a,&a,ptr);
    printf(" %d , %d \n",*(a+1),*(ptr-1));
 
    
    printf("%d,%d ,%d,%d",sizeof(a ),sizeof(&a ),sizeof(int32_t ),sizeof(int64_t));
}


@end


