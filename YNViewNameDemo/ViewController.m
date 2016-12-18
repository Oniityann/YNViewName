//
//  ViewController.m
//  YNViewNameDemo
//
//  Created by 郑一楠 on 2016/12/18.
//  Copyright © 2016年 zyn. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YNViewName.h"

static NSString *const imageViewName = @"theImageView";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 400, 50, 25)];
    imageView.backgroundColor = [UIColor blackColor];
    imageView.yn_viewName = imageViewName;
    [self.view addSubview:imageView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 450, 50, 25);
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
#if 0
    UIButton *ibButton = (UIButton *)[self.view yn_viewNamed:@"changeColorButton"];
    [ibButton addTarget:self action:@selector(ibButtonClick) forControlEvents:UIControlEventTouchUpInside];
#endif
}

- (void)changeColor {
    UIImageView *imageView = (UIImageView *)[self.view yn_viewNamed:imageViewName];
    imageView.backgroundColor = [UIColor grayColor];
}

- (IBAction)changeFirstColor {
    
    UIImageView *imageView = (UIImageView *)[self.view yn_viewNamed:@"firstImageView"];
    imageView.backgroundColor = [UIColor greenColor];
}

#if 0
- (void)ibButtonClick {
    UIImageView *imageView = (UIImageView *)[self.view yn_viewNamed:@"firstImageView"];
    imageView.backgroundColor = [UIColor greenColor];
}
#endif

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
