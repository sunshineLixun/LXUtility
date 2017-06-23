//
//  UIImage+LXCategory.h
//  LXUtility
//
//  Created by lixun on 2017/5/6.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LXCategory)

/**
 图片裁剪为圆角

 @param radius 角度
 @return 裁剪之后新的image
 */
- (UIImage *)imageByRoundCornerRadius:(CGFloat)radius;


- (UIImage *)imageByRoundCornerRadius:(CGFloat)radius
                          borderWidth:(CGFloat)borderWidth
                          borderColor:(UIColor *)borderColor;


- (UIImage *)imageByRoundCornerRadius:(CGFloat)radius
                              corners:(UIRectCorner)corners
                          borderWidth:(CGFloat)borderWidth
                          borderColor:(UIColor *)borderColor
                       borderLineJoin:(CGLineJoin)borderLineJoin;


@end
