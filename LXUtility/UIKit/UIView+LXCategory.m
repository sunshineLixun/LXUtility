//
//  UIView+LXCategory.m
//  LXUtility
//
//  Created by lixun on 2017/5/6.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "UIView+LXCategory.h"

@implementation UIView (LXCategory)

- (CGFloat)lx_left{
    return self.frame.origin.x;
}

- (void)setLx_left:(CGFloat)lx_left{
    CGRect frame = self.frame;
    frame.origin.x = lx_left;
    self.frame = frame;
}

- (CGFloat)lx_top{
    return self.frame.origin.y;
}

- (void)setLx_top:(CGFloat)lx_top{
    CGRect frame = self.frame;
    frame.origin.y = lx_top;
    self.frame = frame;
}

- (CGFloat)lx_right{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setLx_right:(CGFloat)lx_right{
    CGRect frame = self.frame;
    frame.origin.x = lx_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)lx_bottom{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLx_bottom:(CGFloat)lx_bottom{
    CGRect frame = self.frame;
    frame.origin.y = lx_bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)lx_width{
    return self.frame.size.width;
}

- (void)setLx_width:(CGFloat)lx_width{
    CGRect frame = self.frame;
    frame.size.width = lx_width;
    self.frame = frame;
}

- (CGFloat)lx_height{
    return self.frame.size.height;
}


- (void)setLx_height:(CGFloat)lx_height{
    CGRect frame = self.frame;
    frame.size.height = lx_height;
    self.frame = frame;
}

- (CGFloat)lx_centerX{
    return self.center.x;
}

- (void)setLx_centerX:(CGFloat)lx_centerX{
    self.center = CGPointMake(lx_centerX, self.center.y);
}

- (CGFloat)lx_centerY{
    return self.center.y;
}

- (void)setLx_centerY:(CGFloat)lx_centerY{
    self.center = CGPointMake(self.center.x, lx_centerY);
}

- (CGPoint)lx_origin{
    return self.frame.origin;
}

- (void)setLx_origin:(CGPoint)lx_origin{
    CGRect frame = self.frame;
    frame.origin = lx_origin;
    self.frame = frame;
}

- (CGSize)lx_size{
    return self.frame.size;
}

- (void)setLx_size:(CGSize)lx_size{
    CGRect frame = self.frame;
    frame.size = lx_size;
    self.frame = frame;
}

@end
