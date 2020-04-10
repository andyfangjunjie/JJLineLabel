//
//  JJLineLabel.h
//  JJLineViewDemo
//
//  Created by 房俊杰 on 2017/8/13.
//  Copyright © 2017年 房俊杰. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 线条位置

 - JJLineLabelPositionNone: 无线条
 - JJLineLabelPositionMiddle: 中间位置
 - JJLineLabelPositionBottom: 下方位置
 */
typedef NS_ENUM(NSInteger, JJLineLabelPosition) {
    JJLineLabelPositionNone,
    JJLineLabelPositionMiddle,
    JJLineLabelPositionBottom
};

@interface JJLineLabel : UILabel

/** 线条位置 */
@property (nonatomic,assign) JJLineLabelPosition linePosition;
/** 线条高度 */
@property (nonatomic,assign) CGFloat lineHeight;
/** 线条颜色 */
@property (nonatomic,strong) UIColor *lineColor;

/**
 添加点击事件

 @param target 对象
 @param action 方法
 */
- (void)addTarget:(id)target action:(SEL)action;


@end
