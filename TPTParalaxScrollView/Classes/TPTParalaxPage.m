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
	
	for (TPTParalaxControl *c in controlsToApplyParalax)
	{
		CGRect frame = c.control.frame;
		
		//NSLog(@"origin-x %f, %f", self.frame.origin.x, offset);
		if (offset < .2)
		{
			if (direction == 0)
			{
				frame.origin.x = c.padding - (c.offset * offset);
			} else {
				frame.origin.x = c.padding + (c.offset * offset);
			}
			c.control.frame = frame;
		}
		
		if (offset > .8)
		{
			if (direction == 0)
			{
				frame.origin.x = c.padding - (c.offset * (1 - offset));
			} else {
				frame.origin.x = c.padding + (c.offset * (1 - offset));
			}
			c.control.frame = frame;
		}
		
	}
	
}

@end

