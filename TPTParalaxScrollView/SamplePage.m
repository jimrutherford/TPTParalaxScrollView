//
//  SamplePageViewController.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import "SamplePage.h"
#import "TPTParalaxPage.h"

#define layerOneOffset	200
#define layerTwoOffset	100

@interface SamplePage ()

@end

@implementation SamplePage

@synthesize titleLabel;
@synthesize descriptionLabel;
@synthesize bottomImage;
@synthesize topImage;

- (id)initWithFrame: (CGRect)frame {
    self = [super initWithFrame: frame];
    if (self) {
        self = [self sharedInit];
    }
    return self;
}

- (id)sharedInit {
	
	topImage = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, ScreenWidth, 200.0f)];
	
	[self addSubview:topImage];
	
	bottomImage = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, ScreenHeight - 368.0f, ScreenWidth, 368.0f)];
	bottomImage.image = [UIImage imageNamed:@"bg"];
	[self addSubview:bottomImage];
	
	titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 170.0f, ScreenWidth - 40.0f, 30.0f)];
	titleLabel.numberOfLines = 1;
	titleLabel.textColor = [UIColor whiteColor];
	titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:20.0f];
	titleLabel.backgroundColor = [UIColor clearColor];
	titleLabel.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
	titleLabel.shadowOffset = CGSizeMake(1.0, 1.0);
	[self addSubview:titleLabel];
	
	
	descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, ScreenHeight - 348.0f, ScreenWidth - 40.0f, ScreenHeight - 288.0f)];
	descriptionLabel.numberOfLines = 0;
	descriptionLabel.textColor = [UIColor blackColor];
	descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:14.0f];
	descriptionLabel.backgroundColor = [UIColor clearColor];
	[self addSubview:descriptionLabel];
	
	TPTParalaxControl *paralaxControl = [[TPTParalaxControl alloc] init];
	paralaxControl.control = topImage;
	paralaxControl.offset = 100;
	paralaxControl.padding = 0;
	[self.controlsToApplyParalax addObject:paralaxControl];
	
	paralaxControl = [[TPTParalaxControl alloc] init];
	paralaxControl.control = titleLabel;
	paralaxControl.offset = 200;
	paralaxControl.padding = 20;
	[self.controlsToApplyParalax addObject:paralaxControl];
	
    return self;
}


@end
