//
//  TPTParalaxPage.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-24.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import "TPTParalaxPage.h"



@implementation TPTParalaxControl

@synthesize control;
@synthesize offset;
@synthesize padding;

@end

@implementation TPTParalaxPage

@synthesize controlsToApplyParalax;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        controlsToApplyParalax = [NSMutableArray array];
    }
    return self;
}


- (void) parentDidScrollWithFractionalOffset:(float)offset andDirection:(int)direction
{
	for (TPTParalaxControl *paralaxControl in controlsToApplyParalax)
	{
		CGRect frame = paralaxControl.control.frame;
		
		if (offset < .2)
		{
			frame.origin.x = paralaxControl.padding + ((paralaxControl.offset * offset) * direction);
			paralaxControl.control.frame = frame;
		}
		
		if (offset > .8)
		{
			frame.origin.x = paralaxControl.padding + ((paralaxControl.offset * (1 - offset)) * direction);
			paralaxControl.control.frame = frame;
		}
	}
}

@end

