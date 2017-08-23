//
//  NSAttributedString+Size.h
//  uavsystem
//
//  Created by lixun on 2017/8/14.
//  Copyright © 2017年 yuwubao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (Size)

- (CGFloat)heightWithWidth:(CGFloat)width;

- (CGFloat)widthWithHeight:(CGFloat)height;


@end
