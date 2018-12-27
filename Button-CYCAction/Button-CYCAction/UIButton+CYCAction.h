//
//  UIButton+CYCAction.h
//  Button-CYCAction
//
//  Created by 曹老师 on 2018/12/27.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef void(^CYCButtonBlock)(NSInteger index);

@interface UIButton (CYCAction)

// =================================特殊属性=====================================
@property (strong, nonatomic) id model; // 用于储存特定的数据

// =================================normal=====================================
@property (copy, nonatomic) NSString *normalTitle;
@property (strong, nonatomic) UIColor *normalColor;
@property (strong, nonatomic) UIImage *normalImage;

- (void)addNormalTarget:(nullable id)target action:(SEL)action;
- (void)cycAction:(CYCButtonBlock)block;









@end

NS_ASSUME_NONNULL_END
