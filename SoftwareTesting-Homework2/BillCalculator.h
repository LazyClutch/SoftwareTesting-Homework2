//
//  BillCalculator.h
//  SoftwareTesting-Homework2
//
//  Created by Lazy on 15/4/26.
//  Copyright (c) 2015年 Lazy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BillCalculator : NSObject

- (CGFloat)calculateWithDuration:(NSInteger)duration andOwnTime:(NSInteger)ownTime;

@end
