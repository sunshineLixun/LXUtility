//
//  NSDateUtility.h
//  LXUtility
//
//  Created by lixun on 2017/6/23.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateUtility : NSObject

/**
 时间戳转NSDate

 @param string 时间戳
 @return date (yyyy-MM-dd HH:mm:ss)
 */
+ (NSDate *)dateFromString:(NSString *)string;


/**
 时间戳转NSDate

 @param dateString 时间戳
 @param formatter 需要设置的时间格式(默认为: yyyy-MM-dd HH:mm:ss)
 @return 转换后的时间
 */
+ (NSDate *)dateStringToDate:(NSString *)dateString formatter:(nullable NSString *)formatter;


/**
 时间转时间戳

 @param date 当前时间
 @param formatter 设置时间格式
 @return 转换后的时间戳
 */
+ (NSString *)dateToString:(NSDate *)date formatter:(nullable NSString *)formatter;


/**
 校准时差

 @param date 需要校准的时间
 @return 当前北京时间
 */
+ (NSDate *)calibrationTimeDifferenceWithDate:(NSDate *)date;


/**
 返回相差的天数

 @param beginDate 开始时间
 @param endDate 结束时间
 @return 相差的天数
 */
+ (NSInteger)calcDaysFromBegin:(NSDate *)beginDate end:(NSDate *)endDate;

@end

NS_ASSUME_NONNULL_END
