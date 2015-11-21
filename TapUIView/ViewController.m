//
//  ViewController.m
//  TapUIView
//
//  Created by 丁丁 on 15/11/21.
//  Copyright © 2015年 huangyanan. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Tap.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    view.backgroundColor = [UIColor redColor];
    [view addTapGestureWithBlock:^{
        NSLog(@"tap");
    }];
    [self.view addSubview:view];
    
}

@end
