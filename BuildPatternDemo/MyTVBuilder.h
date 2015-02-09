//
//  MyTVBuilder.h
//  BuildPatternDemo
//
//  Created by Parsifal on 15/2/9.
//  Copyright (c) 2015年 Parsifal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTV.h"

@interface MyTVBuilder : NSObject

//MyTV's property
@property (assign, nonatomic) NSInteger size;
@property (copy, nonatomic) NSString *brand;
@property (assign, nonatomic) CGFloat price;

//build method
- (id)build;

@end
