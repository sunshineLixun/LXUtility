//
//  UITableView+LXCategory.m
//  LXUtility
//
//  Created by lixun on 2017/5/6.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "UITableView+LXCategory.h"

@implementation UITableView (LXCategory)


- (NSIndexPath *)indexPathForView:(UIView *)targetView{
    if (targetView && [targetView isKindOfClass:[UIView class]]) {
        CGPoint point = [self convertPoint:targetView.frame.origin fromView:targetView.superview];
        NSIndexPath *indexPath = [self indexPathForRowAtPoint:point];
        return indexPath;
    }
    return nil;
}

@end
