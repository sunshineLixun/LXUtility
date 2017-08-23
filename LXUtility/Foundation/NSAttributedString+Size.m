//
//  NSAttributedString+Size.m
//  uavsystem
//
//  Created by lixun on 2017/8/14.
//  Copyright © 2017年 yuwubao. All rights reserved.
//

#import "NSAttributedString+Size.h"


@implementation NSAttributedString (Size)

- (CGFloat)widthWithHeight:(CGFloat)height{
	CGFloat width = [self boundingRectWithSize:CGSizeMake(height, MAXFLOAT)
									  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
									  context:nil].size.width;
	return width;
}



- (CGFloat)heightWithWidth:(CGFloat)width{
	CGFloat height = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, width)
									   options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
									   context:nil].size.height;
	return height;
}


@end
