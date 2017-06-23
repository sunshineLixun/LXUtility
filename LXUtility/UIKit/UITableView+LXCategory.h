//
//  UITableView+LXCategory.h
//  LXUtility
//
//  Created by lixun on 2017/5/6.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (LXCategory)

/**
 获取cell中某个view所在的indexPath

 @param targetView cell中的子视图view
 @return view 所在的indexPath
 */
- (NSIndexPath  * _Nullable)indexPathForView:(UIView *)targetView;

@end

NS_ASSUME_NONNULL_END
