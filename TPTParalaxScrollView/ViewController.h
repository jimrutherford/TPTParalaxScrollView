//
//  ViewController.h
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SamplePageViewController.h"
#import "TPTParalaxScrollView.h"

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;



@property (strong, nonatomic) SamplePageViewController *page;


@end
