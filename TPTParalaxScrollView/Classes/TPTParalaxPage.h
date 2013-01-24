//
//  TPTParalaxPage.h
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-24.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPTParalaxPage : UIView


@property (nonatomic, strong) NSArray *controlsToApplyParalax;

- (void) parentDidScrollWithFractionalOffset:(float)offset andDirection:(int)direction;

@end
