//
//  UIImageView+LXCategory.h
//  LXUtility
//
//  Created by lixun on 2017/5/6.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImageView (LXCategory)

/**
 将imageview 按照一定的size裁剪

 @param image 要裁剪的image
 @param size 目标大小
 */
-(void)drawImage:(UIImage *)image targetSize:(CGSize )size;

@end
