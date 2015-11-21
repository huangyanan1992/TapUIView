//
//  UIView+Tap.m
//  TapUIView
//
//  Created by 丁丁 on 15/11/21.
//  Copyright © 2015年 huangyanan. All rights reserved.
//

#import "UIView+Tap.h"
#import <objc/runtime.h>

const void *UIView_key_tapBlock;

@implementation UIView (Tap)

-(void) addTapGestureWithBlock:(TapBlock) block{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionTap)];
    [self addGestureRecognizer:tap];
    
    objc_setAssociatedObject(self, UIView_key_tapBlock, block, OBJC_ASSOCIATION_COPY);
}

-(void)actionTap{
    TapBlock block = objc_getAssociatedObject(self, UIView_key_tapBlock);
    
    if (block) block();
}




@end
