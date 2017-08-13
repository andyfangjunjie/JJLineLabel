//
//  ViewController.m
//  JJLineLabelDemo
//
//  Created by 房俊杰 on 2017/8/13.
//  Copyright © 2017年 房俊杰. All rights reserved.
//

#import "ViewController.h"
#import "JJLineLabel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet JJLineLabel *middleLineLabel;

@property (weak, nonatomic) IBOutlet JJLineLabel *bottomLineLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.middleLineLabel.linePosition = JJLineLabelPositionMiddle;
    self.middleLineLabel.textColor = [UIColor grayColor];
    self.middleLineLabel.lineColor = [UIColor redColor];
    
    self.bottomLineLabel.linePosition = JJLineLabelPositionBottom;
    [self.bottomLineLabel addTarget:self action:@selector(tap:)];
}
- (void)tap:(UITapGestureRecognizer *)tap {

    NSLog(@"%@",((JJLineLabel *)tap.view).text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
