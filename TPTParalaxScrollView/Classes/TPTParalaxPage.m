//
//  TPTParalaxPage.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-24.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import "TPTParalaxPage.h"

@implementation TPTParalaxPage

@synthesize controlsToApplyParalax;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void) parentDidScrollWithFractionalOffset:(float)offset andDirection:(int)direction
{
	
	CGRect topImageFrame = topImage.frame;
	CGRect titleLabelFrame = titleLabel.frame;
	
	//NSLog(@"origin-x %f, %f", self.frame.origin.x, offset);
	if (offset < .2)
	{
		if (direction == 0)
		{
			topImageFrame.origin.x = 0 - (layerOneOffset * offset);
			titleLabelFrame.origin.x = 20 - (layerTwoOffset * offset);
		} else {
			topImageFrame.origin.x = 0 + (layerOneOffset * offset);
			titleLabelFrame.origin.x = 20 + (layerTwoOffset * offset);
		}
		topImage.frame = topImageFrame;
		titleLabel.frame = titleLabelFrame;
	}
	
	if (offset > .8)
	{
		if (direction == 0)
		{
			topImageFrame.origin.x = 0 - (layerOneOffset * (1 - offset));
			titleLabelFrame.origin.x = 20 - (layerTwoOffset * (1 - offset));
		} else {
			topImageFrame.origin.x = 0 + (layerOneOffset * (1 - offset));
			titleLabelFrame.origin.x = 20 + (layerTwoOffset * (1 - offset));
		}
		topImage.frame = topImageFrame;
		titleLabel.frame = titleLabelFrame;
	}
}



@end
