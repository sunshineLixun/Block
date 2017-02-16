//
//  main.m
//  Block
//
//  Created by lixun on 2017/1/16.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import <Foundation/Foundation.h>
int global_i = 1;

static int static_global_j = 2;

int main(int argc, char * argv[]) {
    
    
    static int static_k = 3;
    int val = 4;
    
    void (^myBlock)(void) = ^{
        global_i ++;
        static_global_j ++;
        static_k ++;
        NSLog(@"Block中 global_i = %d,static_global_j = %d,static_k = %d,val = %d",global_i,static_global_j,static_k,val);
    };
    
    global_i ++;
    static_global_j ++;
    static_k ++;
    val ++;
    NSLog(@"Block外 global_i = %d,static_global_j = %d,static_k = %d,val = %d",global_i,static_global_j,static_k,val);
    
    myBlock();
    
    return 0;
}
