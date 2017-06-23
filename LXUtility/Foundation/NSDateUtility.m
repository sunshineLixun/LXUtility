//
//  NSDateUtility.m
//  LXUtility
//
//  Created by lixun on 2017/6/23.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "NSDateUtility.h"
#import "NSString+LXCategory.h"

@implementation NSDateUtility


+ (NSDate *)dateFromString:(NSString *)string
{
	return [self dateStringToDate:string formatter:nil];
}


+ (NSDate *)dateStringToDate:(NSString *)dateString formatter:(NSString *)formatter
{
	NSDateFormatter *dataFomate = [[NSDateFormatter alloc] init];
	if ([NSString isEmpty:formatter]) {
		[dataFomate setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	}else{
		[dataFomate setDateFormat:formatter];
	}
	NSDate *nowDate = [dataFomate dateFromString:dateString];
	return nowDate;
}


+ (NSString *)dateToString:(NSDate *)date formatter:(NSString *)formatter
{
	NSDateFormatter *dataFomate = [[NSDateFormatter alloc] init];
	if ([NSString isEmpty:formatter]) {
		[dataFomate setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	}else{
		[dataFomate setDateFormat:formatter];
	}
	NSString *nowDate = [dataFomate stringFromDate:date];
	return nowDate;
}


//校准时差
+ (NSDate *)calibrationTimeDifferenceWithDate:(NSDate *)date
{
	NSTimeZone *zone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
	NSTimeInterval interval = [zone secondsFromGMTForDate:date];
	NSDate *currentDate = [date dateByAddingTimeInterval:interval];
	return currentDate;
}


+ (NSInteger)calcDaysFromBegin:(NSDate *)beginDate end:(NSDate *)endDate
{
	//取两个日期对象的时间间隔：
	NSTimeInterval time = [endDate timeIntervalSinceDate:beginDate];
	NSInteger days = ((NSInteger)time) / (3600 * 24);
	return days;
}

@end
