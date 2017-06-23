//
//  UIControl+LXCategory.m
//  LXUtility
//
//  Created by lixun on 2017/5/6.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "UIControl+LXCategory.h"
@import ObjectiveC;

@implementation UIControl (LXCategory)

- (void)setLx_indexPath:(NSIndexPath *)lx_indexPath{
    objc_setAssociatedObject(self, @selector(lx_indexPath), lx_indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)lx_indexPath{
    return objc_getAssociatedObject(self, @selector(lx_indexPath));
}

@end
