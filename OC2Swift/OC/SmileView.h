//
//  SmileView.h
//  OC2Swift
//
//  Created by shendong on 2018/9/18.
//  Copyright © 2018年 shendong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SmileView : UIView

@property (nonatomic, weak, readonly) UIView *containerView;

- (void)showInView:(UIView *)containerView;

- (void)dismiss;

@end
