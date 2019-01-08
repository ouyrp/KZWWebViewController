//
//  KZWViewController.m
//  KZWWebViewController
//
//  Created by ouyrp on 12/17/2018.
//  Copyright (c) 2018 ouyrp. All rights reserved.
//

#import "KZWExampleViewController.h"
#import <KZWRouter/KZWRouter.h>

@interface KZWExampleViewController ()

@end

@implementation KZWExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"打开网页" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 200, 50);
    button.center = self.view.center;
    [button addTarget:self action:@selector(webAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)webAction {
    [[KZWRouter sharedRouter] open:@"KZWRouter_KZWWebViewController://KZWWebViewController?urlString=https%3a%2f%2fwww.baidu.com%2f"];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
