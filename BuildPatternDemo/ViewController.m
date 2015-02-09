//
//  ViewController.m
//  BuildPatternDemo
//
//  Created by Parsifal on 15/2/9.
//  Copyright (c) 2015年 Parsifal. All rights reserved.
//

#import "ViewController.h"
#import "MyTV.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //demo - create a MyTV instance by "Builder"
    MyTV *myTV = [MyTV createWithBuilder:^(id builder) {
        MyTVBuilder *tvBuilder = builder;
        
        tvBuilder.brand = @"panda";
        tvBuilder.price = 100;
        tvBuilder.size = 12;
    }];
    
    NSLog(@"%@", myTV);
    
    //pass nil block
//    MyTV *tvTest1 = [MyTV createWithBuilder:nil];
//    NSLog(@"%@", tvTest1);
    
    //pass nil parameter
//    MyTV *tvTest2 = [MyTV createWithBuilder:^(id builder) {
//        MyTVBuilder *tvBuilder = builder;
//        
//        tvBuilder.brand = nil;
//    }];
//    
//    NSLog(@"%@", tvTest2);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
