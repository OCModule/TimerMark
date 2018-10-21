//
//  TMNextController.m
//  TimerMark_Example
//
//  Created by steve on 2018/10/21.
//  Copyright © 2018 CNKCQ. All rights reserved.
//

#import "TMNextController.h"
#import "TMWeakProxy.h"

@interface TMNextController ()

@property (nonatomic, strong) CADisplayLink *link;

@end

@implementation TMNextController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
//    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(fireAction)];
    self.link = [CADisplayLink displayLinkWithTarget:[TMWeakProxy proxyWithTarget:self] selector:@selector(fireAction)];
    [self.link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)fireAction {
    NSLog(@"loop 🌹");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
    [self.link invalidate];
    self.link = nil;
}

@end
