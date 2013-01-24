//
//  TPTParalaxPage.h
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-24.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPTParalaxPage.h"

@interface TPTParalaxControl : NSObject
@property (nonatomic) UIView *control;
@property (nonatomic) float offset;
@property (nonatomic) float padding;
@end

@interface TPTParalaxPage : UIView


@property (nonatomic, strong) NSMutableArray *controlsToApplyParalax;

- (void) parentDidScrollWithFractionalOffset:(float)offset andDirection:(int)direction;

@end
