//
//  UIButton+CYCAction.m
//  Button-CYCAction
//
//  Created by 曹老师 on 2018/12/27.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import "UIButton+CYCAction.h"

@implementation UIButton (CYCAction)


#pragma mark ========================================normal=============================================

#pragma mark - 标题
- (NSString *)normalTitle {
    return [self titleForState:UIControlStateNormal];
}
- (void)setNormalTitle:(NSString *)normalTitle {
    [self setTitle:normalTitle forState:UIControlStateNormal];
}

#pragma mark - 颜色
- (UIColor *)normalColor {
    return [self titleColorForState:UIControlStateNormal];
}
- (void)setNormalColor:(UIColor *)normalColor {
    [self setTitleColor:normalColor forState:UIControlStateNormal];
}

#pragma mark - 图片
- (UIImage *)normalImage {
    return [self imageForState:UIControlStateNormal];
}
- (void)setNormalImage:(UIImage *)normalImage {
    [self setImage:normalImage forState:UIControlStateNormal];
}

#pragma mark - 方法
- (void)addNormalTarget:(id)target action:(SEL)action {
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}




































@end
