//
//  ViewController.m
//  HitTest
//
//  Created by ly on 16/3/7.
//  Copyright © 2016年 liyang. All rights reserved.
//

#import "ViewController.h"
#import "HitTestView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self hitTest];
    
}
- (void)hitTest {
    HitTestView *hit = [HitTestView hitTestView];
    hit.frame = self.view.bounds;
    [self.view addSubview:hit];
    
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGr:)];
    [self.view addGestureRecognizer:tapGr];
}
- (void)tapGr:(UITapGestureRecognizer *)tapGr {
    NSLog(@"123213");
}
@end
