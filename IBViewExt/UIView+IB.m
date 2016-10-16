//
//  UIView+IB.m
//  IBViewExt
//
//  Created by xuemincai on 2016/10/15.
//  Copyright © 2016年 xuemincai. All rights reserved.
//

#import "UIView+IB.h"
#import <objc/runtime.h>

@implementation UIView (IB)

-(CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.masksToBounds = cornerRadius > 0;
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.masksToBounds = borderWidth > 0;
    self.layer.borderWidth = borderWidth;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

#pragma mark 顶部描边

- (UIColor *)topBorderColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setTopBorderColor:(UIColor *)topBorderColor {
    objc_setAssociatedObject(self, @selector(topBorderColor), topBorderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)topBorderWidth {
    NSNumber* width = objc_getAssociatedObject(self, _cmd);
    return [width floatValue];
}

- (void)setTopBorderWidth:(CGFloat)topBorderWidth {
    objc_setAssociatedObject(self, @selector(topBorderWidth), [NSNumber numberWithFloat:topBorderWidth], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)topBorderRightPadding {
    NSNumber* padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setTopBorderRightPadding:(CGFloat)topBorderRightPadding {
    objc_setAssociatedObject(self, @selector(topBorderRightPadding), [NSNumber numberWithFloat:topBorderRightPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)topBorderLeftPadding {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setTopBorderLeftPadding:(CGFloat)topBorderLeftPadding {
    objc_setAssociatedObject(self, @selector(topBorderLeftPadding), [NSNumber numberWithFloat:topBorderLeftPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark 底部描边

- (CGFloat)bottomBorderWidth {
    NSNumber *width = objc_getAssociatedObject(self, _cmd);
    return [width floatValue];
}

- (void)setBottomBorderWidth:(CGFloat)bottomBorderWidth {
    objc_setAssociatedObject(self, @selector(bottomBorderWidth), [NSNumber numberWithFloat:bottomBorderWidth], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)bottomBorderLeftPadding {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setBottomBorderLeftPadding:(CGFloat)bottomBorderLeftPadding {
    objc_setAssociatedObject(self, @selector(bottomBorderLeftPadding), [NSNumber numberWithFloat:bottomBorderLeftPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)bottomBorderRightPadding {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setBottomBorderRightPadding:(CGFloat)bottomBorderRightPadding {
    objc_setAssociatedObject(self, @selector(bottomBorderRightPadding), [NSNumber numberWithFloat:bottomBorderRightPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)bottomBorderColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setBottomBorderColor:(UIColor *)bottomBorderColor {
    objc_setAssociatedObject(self, @selector(bottomBorderColor), bottomBorderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark 左描边

- (CGFloat)leftBorderWidth {
    NSNumber *width = objc_getAssociatedObject(self, _cmd);
    return [width floatValue];
}

- (void)setLeftBorderWidth:(CGFloat)leftBorderWidth {
    objc_setAssociatedObject(self, @selector(leftBorderWidth), [NSNumber numberWithFloat:leftBorderWidth], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)leftBorderTopPadding {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setLeftBorderTopPadding:(CGFloat)leftBorderTopPadding {
    objc_setAssociatedObject(self, @selector(leftBorderTopPadding), [NSNumber numberWithFloat:leftBorderTopPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)leftBorderBottomPading {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setLeftBorderBottomPading:(CGFloat)leftBorderBottomPading {
    objc_setAssociatedObject(self, @selector(leftBorderBottomPading), [NSNumber numberWithFloat:leftBorderBottomPading], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)leftBorderColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setLeftBorderColor:(UIColor *)leftBorderColor {
    objc_setAssociatedObject(self, @selector(leftBorderColor), leftBorderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark 右描边

- (CGFloat)rightBorderWidth {
    NSNumber *width = objc_getAssociatedObject(self, _cmd);
    return [width floatValue];
}

- (void)setRightBorderWidth:(CGFloat)rightBorderWidth {
    objc_setAssociatedObject(self, @selector(rightBorderWidth), [NSNumber numberWithFloat:rightBorderWidth], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)rightBorderTopPadding {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setRightBorderTopPadding:(CGFloat)rightBorderTopPadding {
    objc_setAssociatedObject(self, @selector(rightBorderTopPadding), [NSNumber numberWithFloat:rightBorderTopPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)rightBorderBottomPadding {
    NSNumber *padding = objc_getAssociatedObject(self, _cmd);
    return [padding floatValue];
}

- (void)setRightBorderBottomPadding:(CGFloat)rightBorderBottomPadding {
    objc_setAssociatedObject(self, @selector(rightBorderBottomPadding), [NSNumber numberWithFloat:rightBorderBottomPadding], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)rightBorderColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setRightBorderColor:(UIColor *)rightBorderColor {
    objc_setAssociatedObject(self, @selector(rightBorderColor), rightBorderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark runtime

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class class = [self class];
        
        SEL originalSelector = @selector(layoutSubviews);
        SEL swizzledSelector = @selector(layoutSubviewsStroke);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
            
        } else {
            
            method_exchangeImplementations(originalMethod, swizzledMethod);
            
        }
        
    });
    
}

- (void)layoutSubviewsStroke {
    
    [self layoutSubviewsStroke];
    
    [self addBorderTop];
    [self addBorderBottom];
    [self addBorderLeft];
    [self addBorderRight];
    
    
}

- (void)addBorderUtility:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height color:(UIColor *)color {
    
    CALayer *border = [CALayer new];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(x, y, width, height);
    [self.layer addSublayer:border];
    
}

- (void)addBorderTop {
    
    if (self.topBorderWidth <= 0) {
        return;
    }
    
    CGFloat padding = self.topBorderLeftPadding + self.topBorderRightPadding;
    CGFloat width = CGRectGetWidth(self.frame) - padding;
    
    
    [self addBorderUtility:self.topBorderLeftPadding y:0 width:width height:self.topBorderWidth color:self.topBorderColor];
    
}

- (void)addBorderBottom {
    
    if (self.bottomBorderWidth <= 0) {
        return;
    }
    
    CGFloat padding = self.bottomBorderLeftPadding + self.bottomBorderRightPadding;
    CGFloat width = CGRectGetWidth(self.frame) - padding;
    
    [self addBorderUtility:self.bottomBorderLeftPadding y:CGRectGetHeight(self.frame) - self.bottomBorderWidth width:width height:self.bottomBorderWidth color:self.bottomBorderColor];
    
}

- (void)addBorderLeft {
    
    if (self.leftBorderWidth <= 0) {
        return;
    }
    
    CGFloat padding = self.leftBorderTopPadding + self.leftBorderBottomPading;
    CGFloat height = CGRectGetHeight(self.frame) - padding;
    
    [self addBorderUtility:0 y:self.leftBorderTopPadding width:self.leftBorderWidth height:height color:self.leftBorderColor];
    
}

- (void)addBorderRight {
    
    if (self.rightBorderWidth <= 0) {
        return;
    }
    
    CGFloat padding = self.rightBorderTopPadding + self.rightBorderBottomPadding;
    CGFloat height = CGRectGetHeight(self.frame) - padding;
    
    [self addBorderUtility:CGRectGetWidth(self.frame) - self.rightBorderWidth y:self.rightBorderTopPadding width:self.rightBorderWidth height:height color:self.rightBorderColor];
    
}



@end

