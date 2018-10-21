//
//  TMViewController.m
//  TimerMark
//
//  Created by CNKCQ on 10/21/2018.
//  Copyright (c) 2018 CNKCQ. All rights reserved.
//

#import "TMViewController.h"
#import "TMNextController.h"

@interface TMViewController ()

@end

@implementation TMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    TMNextController *dest = [TMNextController new];
    [self presentViewController:dest animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
