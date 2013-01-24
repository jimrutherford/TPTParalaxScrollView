//
//  TPTParalaxScrollView.h
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TPTParalaxScrollView : UIScrollView <UIScrollViewDelegate>

typedef enum
{
	kScrollDirectionLeft = -1,
	kScrollDirectionRight = 1
	
} ScrollDirection;

- (void) paralaxScrollViewDidScroll;


@end
