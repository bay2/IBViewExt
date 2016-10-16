//
//  UIView+IB.h
//  IBViewExt
//
//  Created by xuemincai on 2016/10/15.
//  Copyright © 2016年 xuemincai. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface UIView (IB)


/**
 圆角
 */
@property (nonatomic) IBInspectable CGFloat cornerRadius;


/**
 描框线宽度
 */
@property (nonatomic) IBInspectable CGFloat borderWidth;


/**
 描框颜色
 */
@property (nonatomic, strong) IBInspectable UIColor* borderColor;


#pragma mark 顶部描边


/**
 顶部描边线宽度
 */
@property (nonatomic) IBInspectable CGFloat topBorderWidth;


/**
 顶部描边线左间隙
 */
@property (nonatomic) IBInspectable CGFloat topBorderLeftPadding;


/**
 顶部描边线右间隙
 */
@property (nonatomic) IBInspectable CGFloat topBorderRightPadding;


/**
 顶部描边线颜色
 */
@property (nonatomic, strong) IBInspectable UIColor* topBorderColor;

#pragma mark 底部描边


/**
 底部描边宽度
 */
@property (nonatomic) IBInspectable CGFloat bottomBorderWidth;

/**
 底部描边左间隙
 */
@property (nonatomic) IBInspectable CGFloat bottomBorderLeftPadding;

/**
 底部描边右间隙
 */
@property (nonatomic) IBInspectable CGFloat bottomBorderRightPadding;

/**
 底部描边颜色
 */
@property (nonatomic, strong) IBInspectable UIColor* bottomBorderColor;

#pragma mark 左描边


/**
 左描边线宽度
 */
@property (nonatomic) IBInspectable CGFloat leftBorderWidth;

/**
 左描边线顶部间隙
 */
@property (nonatomic) IBInspectable CGFloat leftBorderTopPadding;

/**
 左描边线底部间隙
 */
@property (nonatomic) IBInspectable CGFloat leftBorderBottomPading;

/**
 左描边线颜色
 */
@property (nonatomic, strong) IBInspectable UIColor* leftBorderColor;

#pragma mark 右描边


/**
 右描边线宽度
 */
@property (nonatomic) IBInspectable CGFloat rightBorderWidth;

/**
 右描边顶部间隙
 */
@property (nonatomic) IBInspectable CGFloat rightBorderTopPadding;


/**
 右描边底部间隙
 */
@property (nonatomic) IBInspectable CGFloat rightBorderBottomPadding;


/**
 右描边颜色
 */
@property (nonatomic, strong) IBInspectable UIColor* rightBorderColor;




@end
