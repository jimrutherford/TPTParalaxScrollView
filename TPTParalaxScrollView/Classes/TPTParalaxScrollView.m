//
//  TPTParalaxScrollView.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import "TPTParalaxScrollView.h"
#import "TPTParalaxScrollViewPrivateDelegate.h"

// maybe expose these as properties
#define pageWidth 320




@implementation TPTParalaxScrollView {
    TPTParalaxScrollViewPrivateDelegate *_myDelegate;
}

#pragma mark - UIScrollView Delegate Methods
- (void) paralaxScrollViewDidScroll
{
	NSLog(@"Content Offset %f", [self fractionalOffset]);
}


- (float) fractionalOffset
{
	int currentPageContentOffset = (int)self.contentOffset.x % pageWidth;
	return (float)currentPageContentOffset / (float)pageWidth;
}

#pragma mark - Control Initialization

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		[self initDelegate];
    }
    return self;
}

- (void)initDelegate {
    _myDelegate = [[TPTParalaxScrollViewPrivateDelegate alloc] init];
    [super setDelegate:_myDelegate];
}



#pragma mark - Getters/Setters

- (void)setDelegate:(id<UIScrollViewDelegate>)delegate {
    _myDelegate->_userDelegate = delegate;
    // Scroll view delegate caches whether the delegate responds to some of the delegate
    // methods, so we need to force it to re-evaluate if the delegate responds to them
    super.delegate = nil;
    super.delegate = (id)_myDelegate;
}

- (id<UIScrollViewDelegate>)delegate {
    return _myDelegate->_userDelegate;
}



@end


