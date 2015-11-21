//
//  UIView+Tap.h
//  TapUIView
//
//  Created by 丁丁 on 15/11/21.
//  Copyright © 2015年 huangyanan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^TapBlock)(void);
@interface UIView (Tap)

-(void) addTapGestureWithBlock:(TapBlock) block;

@end
