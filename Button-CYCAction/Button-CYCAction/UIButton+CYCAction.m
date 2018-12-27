//
//  UIButton+CYCAction.m
//  Button-CYCAction
//
//  Created by 曹老师 on 2018/12/27.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import "UIButton+CYCAction.h"
#import <objc/runtime.h>

static const void *modelKey = &modelKey;
static const void *blockKey = &blockKey;

@implementation UIButton (CYCAction)


#pragma mark ========================================特殊属性=============================================
- (id)model {
    return objc_getAssociatedObject(self, modelKey);
}
- (void)setModel:(id)model {
    objc_setAssociatedObject(self, modelKey, model, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

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

#pragma mark - 快捷响应
- (void)cycAction:(CYCButtonBlock)block {
    objc_setAssociatedObject(self, blockKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addNormalTarget:self action:@selector(blockAction)];
}
- (void)blockAction {
    CYCButtonBlock block = objc_getAssociatedObject(self, blockKey);
    if (block) {
        block(self.tag);
    }
}

































@end
