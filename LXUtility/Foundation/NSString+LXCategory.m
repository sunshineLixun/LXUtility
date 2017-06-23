//
//  NSString+LXCategory.m
//  LXUtility
//
//  Created by lixun on 2017/6/23.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "NSString+LXCategory.h"

@implementation NSString (LXCategory)

+ (BOOL)isEmpty:(id )obj
{
	if(obj == nil || [obj isKindOfClass:[NSNull class]] || [obj isEqualToString:@""] || [obj isEqualToString:@"(null)"] || [obj isEqualToString:@"NULL"] || [obj isEqualToString:@"<null>"] || [obj isEqualToString:@"null"]){
		return YES;
	}
	return NO;
}



- (CGFloat)heightConstraintedWidth:(CGFloat)width lines:(NSInteger)line font:(UIFont *)font{
	UILabel *label = [UILabel new];
	label.bounds = CGRectMake(0, 0, width, CGFLOAT_MAX);
	label.numberOfLines = line;
	label.font = font;
	label.text = self;
	[label sizeToFit];
	return label.bounds.size.height;
}

- (CGFloat)widthConstraintedHeight:(CGFloat)height lines:(NSInteger)line font:(UIFont *)font{
	UILabel *label = [UILabel new];
	label.bounds = CGRectMake(0, 0, CGFLOAT_MAX, height);
	label.numberOfLines = line;
	label.font = font;
	label.text = self;
	[label sizeToFit];
	return label.bounds.size.width;
}

- (CGFloat)heightWithWidth:(CGFloat)width font:(UIFont *)font
{
	CGRect attrsRect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
										  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
									   attributes:@{NSFontAttributeName : font}
										  context:nil];
	return attrsRect.size.height;
}

- (CGFloat)widthWithHeight:(CGFloat)height font:(UIFont *)font{
	CGRect attrsRect = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height)
										  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
									   attributes:@{NSFontAttributeName : font}
										  context:nil];
	return attrsRect.size.width;
}



@end
