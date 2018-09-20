//
//  Sandwich.m
//  OC2Swift
//
//  Created by shendong on 2018/9/18.
//  Copyright © 2018年 shendong. All rights reserved.
//

#import "Sandwich.h"

@implementation SandwichPreferences

@end

@implementation Sandwich
- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (!self) return nil;
    self.name = name;
    return self;
}
@end
