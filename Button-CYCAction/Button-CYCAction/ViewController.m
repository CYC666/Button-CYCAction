//
//  ViewController.m
//  Button-CYCAction
//
//  Created by 曹老师 on 2018/12/27.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+CYCAction.h"


#define CNSL(str) NSLog(@"%@", str);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 70)];
    btn.center = CGPointMake(200, 300);
    btn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn];
    
    // UIButton+CYCAction测试区
    btn.normalTitle = @"正常标题";
    btn.normalColor = [UIColor darkTextColor];
    [btn addNormalTarget:self action:@selector(btnButtonAction:)];
    
    
    
}



- (void)btnButtonAction:(UIButton *)button {
    
    CNSL(button.normalTitle)
    
}

@end
