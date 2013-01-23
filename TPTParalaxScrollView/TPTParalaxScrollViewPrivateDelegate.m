//
//  TPTParalaxScrollViewPrivateDelegate.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-23.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//
//  Solution comes from http://goo.gl/XHSzr
//

#import "TPTParalaxScrollViewPrivateDelegate.h"
#import "TPTParalaxScrollView.h"

@implementation TPTParalaxScrollViewPrivateDelegate

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
	[(TPTParalaxScrollView *)scrollView paralaxScrollViewDidScroll];
	if ([_userDelegate respondsToSelector:_cmd]) {
        [_userDelegate scrollViewDidScroll:scrollView];
    }
}

- (BOOL)respondsToSelector:(SEL)selector {
    return [_userDelegate respondsToSelector:selector] || [super respondsToSelector:selector];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    // This should only ever be called from `UIScrollView`, after it has verified
    // that `_userDelegate` responds to the selector by sending me
    // `respondsToSelector:`.  So I don't need to check again here.
    [invocation invokeWithTarget:_userDelegate];
}


@end