//
//  MyTVBuilder.m
//  BuildPatternDemo
//
//  Created by Parsifal on 15/2/9.
//  Copyright (c) 2015年 Parsifal. All rights reserved.
//

#import "MyTVBuilder.h"

@implementation MyTVBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _brand = @"default";
        _price = 0;
        _size = 0;
    }
    return self;
}

- (id)build
{
    MyTV *myTV = [MyTV new];
    
    //do some checking
    NSParameterAssert(_brand);
    
    //config
    myTV.size = _size;
    myTV.brand = _brand;
    myTV.price = _price;
    
    return myTV;
}

@end
