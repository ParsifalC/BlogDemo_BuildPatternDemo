//
//  MyTV.h
//  BuildPatternDemo
//
//  Created by Parsifal on 15/2/9.
//  Copyright (c) 2015年 Parsifal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MyTVBuilder.h"

//builder block
typedef void (^BuilderBlock)(id builder);

@interface MyTV : NSObject

@property (assign, nonatomic) NSInteger size;
@property (copy, nonatomic) NSString *brand;
@property (assign, nonatomic) CGFloat price;

+ (MyTV *)createWithBuilder:(BuilderBlock)builderBlock;

@end
