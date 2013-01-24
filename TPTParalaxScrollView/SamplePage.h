//
//  SamplePageViewController.h
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPTParalaxPage.h"

@interface SamplePage : TPTParalaxPage

@property (nonatomic, strong) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *descriptionLabel;

@property (strong, nonatomic) UIImageView *bottomImage;
@property (strong, nonatomic) UIImageView *topImage;

@property (nonatomic) float scrollPosition;

@end
