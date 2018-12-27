//
//  UIButton+CYCAction.h
//  Button-CYCAction
//
//  Created by 曹老师 on 2018/12/27.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (CYCAction)


// =================================normal=====================================
@property (copy, nonatomic) NSString *normalTitle;
@property (strong, nonatomic) UIColor *normalColor;
@property (strong, nonatomic) UIImage *normalImage;

- (void)addNormalTarget:(nullable id)target action:(SEL)action;










@end

NS_ASSUME_NONNULL_END
