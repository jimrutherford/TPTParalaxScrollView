//
//  TPTParalaxScrollViewPrivateDelegate.h
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-23.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TPTParalaxScrollViewPrivateDelegate : NSObject <UIScrollViewDelegate> {

@public
    id<UIScrollViewDelegate> _userDelegate;
}

@end
