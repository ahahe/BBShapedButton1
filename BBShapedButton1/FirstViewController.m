//
//  FirstViewController.m
//  BBShapedButton1
//
//  Created by 韦家冰 on 2017/9/3.
//  Copyright © 2017年 韦家冰. All rights reserved.
//

#import "FirstViewController.h"
#import "BBShapedButton.h"
#import "BBIrregularImageButton.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"=====%@",@"1.1.1.11");
    
    
    //XX按钮
    BBIrregularImageButton *imageBtn = [[BBIrregularImageButton alloc] initWithFrame:CGRectMake(50, 0, 100, 100)];
    imageBtn.backgroundColor=[UIColor clearColor];
    [imageBtn setImage:[UIImage imageNamed:@"button-normal"] forState:UIControlStateNormal];
    [self.view addSubview:imageBtn];

    
    
    BBShapedButton *btn = [BBShapedButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 150, 200, 100);
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 100)];
    [path addLineToPoint:CGPointMake(20, 0)];
    [path addLineToPoint:CGPointMake(45, 50)];
    [path addLineToPoint:CGPointMake(70, 0)];
    [path addLineToPoint:CGPointMake(150, 30)];
    [path addLineToPoint:CGPointMake(175, 0)];
    [path addLineToPoint:CGPointMake(200, 100)];
    [path closePath];
    btn.path = path;
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
    
    
    
    
}
- (void)btnAction:(UIButton *)sender
{
    sender.backgroundColor = [UIColor colorWithRed:(arc4random() % 255 + 1) / 255.0
                                             green:(arc4random() % 255 + 1) / 255.0
                                              blue:(arc4random() % 255 + 1) / 255.0
                                             alpha:1.0];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
}


@end
