//
//  MyTV.m
//  BuildPatternDemo
//
//  Created by Parsifal on 15/2/9.
//  Copyright (c) 2015年 Parsifal. All rights reserved.
//

#import "MyTV.h"

@implementation MyTV

+ (MyTV *)createWithBuilder:(BuilderBlock)builderBlock
{
    if (!builderBlock) {
        NSAssert(builderBlock, @"builder block couldn't be nil!!!");
        return nil;
    }
    //builder
    MyTVBuilder *tvBuilder = [MyTVBuilder new];
    //builder config
    builderBlock(tvBuilder);
    
    return [tvBuilder build];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"MyTV Info: brand:%@ size:%ld price:%.2f",self.brand, self.size, self.price];
}

@end
