//
//  JJLineLabel.m
//  JJLineViewDemo
//
//  Created by 房俊杰 on 2017/8/13.
//  Copyright © 2017年 房俊杰. All rights reserved.
//

#import "JJLineLabel.h"

@interface JJLineLabel ()

/** 最终frame */
@property (nonatomic,assign) CGRect trueFrame;

@end

@implementation JJLineLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.trueFrame = self.frame;
    
    [self setNeedsDisplay];
}
#pragma mark - 初始化
- (void)setup {
    self.lineColor = self.textColor;
    self.lineHeight = 1.0;
    self.linePosition = JJLineLabelPositionNone;
    
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    
    if (self.linePosition == JJLineLabelPositionNone) return;
    
    CGFloat width = self.trueFrame.size.width;
    CGFloat height = self.trueFrame.size.height;
    CGFloat y = 0.0;
    switch (self.linePosition) {
        case JJLineLabelPositionMiddle: {
            y = (height-1)/2;
            break;
        }
        case JJLineLabelPositionBottom: {
            y = CGRectGetHeight(self.trueFrame) - self.lineHeight;
            break;
        }
        default:
            break;
    }
    [self.lineColor set];

    UIRectFill(CGRectMake(0, y, width, self.lineHeight));
}

#pragma mark - setter
- (void)setLineColor:(UIColor *)lineColor {
    _lineColor = lineColor;
    [self setNeedsDisplay];
}
- (void)setLineHeight:(CGFloat)lineHeight {
    _lineHeight = lineHeight;
    [self setNeedsDisplay];
}
- (void)setLinePosition:(JJLineLabelPosition)linePosition {
    _linePosition = linePosition;
    [self setNeedsDisplay];
}
- (void)setTextColor:(UIColor *)textColor {
    [super setTextColor:textColor];
    self.lineColor = textColor;
    [self setNeedsDisplay];
}
#pragma mark - function
/**
 添加点击事件
 
 @param target 对象
 @param action 方法
 */
- (void)addTarget:(id)target action:(SEL)action {
    
    self.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tap];
}
@end



































