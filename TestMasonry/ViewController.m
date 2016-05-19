//
//  ViewController.m
//  TestMasonry
//
//  Created by bingbing.luo on 16/5/11.
//  Copyright © 2016年 Adinnnet. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *greenView=UIView.new;

    greenView.backgroundColor=[UIColor greenColor];
    UIEdgeInsets pading=UIEdgeInsetsMake(10, 10, 10, 10);
    [self.view addSubview:greenView];
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).with.mas_offset(pading);
    }];
    UIView *blackView=UIView.new;
    blackView.backgroundColor=[UIColor blackColor];
    [greenView addSubview:blackView];
    [blackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(greenView).offset(10);
        make.top.equalTo(greenView).offset(20);
        make.size.mas_equalTo(CGSizeMake(100, 200));
    }];
    UIView *redView=UIView.new;
    redView.backgroundColor=[UIColor redColor];
    [greenView addSubview:redView];
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(blackView.mas_bottom).offset(70);
              make.bottom.mas_equalTo(greenView).offset(-20);
        make.right.mas_equalTo(greenView).offset(-40);
        make.left.mas_equalTo(greenView.mas_left).offset(20);
          }];
    UIView *blue=UIView.new;
    blue.backgroundColor=[UIColor blueColor];
    [greenView addSubview:blue];
    [blue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(greenView).offset(-10);
        make.height.equalTo(blackView).offset(-40);
        make.width.equalTo(blackView);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
