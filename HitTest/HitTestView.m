//
//  HitTestView.m
//  HitTest
//
//  Created by ly on 16/3/7.
//  Copyright © 2016年 liyang. All rights reserved.
//

#import "HitTestView.h"

@implementation HitTestView

+ (instancetype)hitTestView {
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGr:)];
        [self addGestureRecognizer:tapGr];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *result = [super hitTest:point withEvent:event];
    if (result == self) {
        return nil;
    }else{
        return result;
    }
}

- (void)tapGr:(UITapGestureRecognizer *)tapGr {
    NSLog(@"1");
}

@end
