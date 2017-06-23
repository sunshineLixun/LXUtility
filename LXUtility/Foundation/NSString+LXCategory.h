//
//  NSString+LXCategory.h
//  LXUtility
//
//  Created by lixun on 2017/6/23.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (LXCategory)

+ (BOOL)isEmpty:(id )obj;

- (CGFloat)heightConstraintedWidth:(CGFloat)width lines:(NSInteger)line font:(UIFont *)font;

- (CGFloat)widthConstraintedHeight:(CGFloat)height lines:(NSInteger)line font:(UIFont *)font;

- (CGFloat)heightWithWidth:(CGFloat)width font:(UIFont *)font;

- (CGFloat)widthWithHeight:(CGFloat)height font:(UIFont *)font;

@end
