//
//  ViewController.m
//  LNavigationControllerDemo
//
//  Created by lichaowei on 15/3/20.
//  Copyright (c) 2015年 lcw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat R = random() % 256;
    CGFloat G = random() % 256;
    CGFloat B = random() % 256;
    UIColor *color = [UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:1];
    self.view.backgroundColor = color;
    
    //关闭 系统自动滑动返回手势(iOS 7.0之后)
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake((self.view.frame.size.width - 200) / 2.f, 200, 200, 50);
    [button setTitle:@"go to next page" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickToPush:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickToPush:(id)sender {
    
    // 2 ~ 6 随机数 random() % (b - a + 1) + a
    
    ViewController *next = [[ViewController alloc]init];
    [self.navigationController pushViewController:next animated:YES];
}
@end
