//
//  SmileView.m
//  OC2Swift
//
//  Created by shendong on 2018/9/18.
//  Copyright © 2018年 shendong. All rights reserved.
//

#import "SmileView.h"

@implementation SmileView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.lightTextColor;
        [self setup];
    }
    return self;
}
- (void)setup{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = UIColor.redColor;
    [btn setTitle:@"Tap here" forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 50, self.bounds.size.width - 100, 50);
    [self addSubview:btn];
    [btn addTarget:self action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)tapAction:(id)sender{
    
}
- (void)dismiss{
    if (self.superview) {
        [self removeFromSuperview];
    }
}
- (void)showInView:(UIView *)containerView{
    [containerView addSubview:self];
}

@end
