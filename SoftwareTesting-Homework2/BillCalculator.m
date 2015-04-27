//
//  BillCalculator.m
//  SoftwareTesting-Homework2
//
//  Created by Lazy on 15/4/26.
//  Copyright (c) 2015年 Lazy. All rights reserved.
//

#import "BillCalculator.h"

@implementation BillCalculator

const NSInteger kBasicFee = 25;
const CGFloat kPricePerMinute = 0.15f;

- (CGFloat)calculateWithDuration:(NSInteger)duration andOwnTime:(NSInteger)ownTime{
    if (duration < 0 || ownTime > 11 || ownTime < 0) {
        return -1.0f;
    }
    
    
    CGFloat price = 0.0f;
    if (duration >= 0 && duration <= 60) {
        price = (ownTime > 1) ? kBasicFee + (CGFloat)duration * kPricePerMinute : kBasicFee + (CGFloat)duration * kPricePerMinute * 0.99f;
    } else if (duration > 60 && duration <= 120){
        price = (ownTime > 2) ? kBasicFee + (CGFloat)duration * kPricePerMinute : kBasicFee + (CGFloat)duration * kPricePerMinute * 0.985f;
    } else if (duration > 120 && duration <= 180){
        price = (ownTime > 3) ? kBasicFee + (CGFloat)duration * kPricePerMinute : kBasicFee + (CGFloat)duration * kPricePerMinute * 0.98f;
    } else if (duration > 180 && duration <= 300){
        price = (ownTime > 3) ? kBasicFee + (CGFloat)duration * kPricePerMinute : kBasicFee + (CGFloat)duration * kPricePerMinute * 0.975f;
    } else {
        price = (ownTime > 6) ? kBasicFee + (CGFloat)duration * kPricePerMinute : kBasicFee + (CGFloat)duration * kPricePerMinute * 0.97f;
    }
    
    return price;
}

@end
