//
//  ViewController.m
//  UIStackView等间距布局
//
//  Created by shan on 16/8/7.
//  Copyright © 2016年 hoge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIStackView *containerView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    containerView = [[UIStackView alloc] initWithFrame:CGRectMake(0, 100, 300, 200)];
    containerView.axis = UILayoutConstraintAxisHorizontal;
    containerView.distribution = UIStackViewDistributionFillEqually;
    containerView.spacing = 10;
    containerView.alignment = UIStackViewAlignmentFill;
    containerView.backgroundColor = [UIColor brownColor];
    
    for (NSInteger i = 0; i < 4; i++) {
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor colorWithRed:random()%256/255.0 green:random()%256/255.0 blue:random()%256/255.0 alpha:1];
        [containerView addArrangedSubview:view];
    }
    
    [self.view addSubview:containerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
