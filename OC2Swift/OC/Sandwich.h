//
//  Sandwich.h
//  OC2Swift
//
//  Created by shendong on 2018/9/18.
//  Copyright © 2018年 shendong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_SWIFT_NAME(Sandwich.Preferences)

@interface SandwichPreferences: NSObject

@property (nonatomic, assign) BOOL includesCrust NS_SWIFT_NAME(isCrusty);

@end

@interface Sandwich : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) SandwichPreferences *preferences;

- (instancetype)initWithName:(NSString *)name;

@end
