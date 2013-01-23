//
//  ViewController.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import "ViewController.h"
#import "SamplePageViewController.h"
#import "TPTParalaxScrollView.h"

#define numberOfPages 2

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;
@synthesize page;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	scrollView = [[TPTParalaxScrollView alloc] init];
	
	CGRect scrollViewFrame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
	scrollView.frame = scrollViewFrame;
	scrollView.pagingEnabled = YES;
	scrollView.showsVerticalScrollIndicator = NO;
	scrollView.showsHorizontalScrollIndicator = YES;
	
	scrollView.delegate = self;
	[scrollView setContentSize: CGSizeMake(scrollView.bounds.size.width * numberOfPages, scrollView.bounds.size.height)];
	
	page = [[SamplePageViewController alloc] initWithNibName:@"SamplePageViewController" bundle:nil];
	
	[self.view addSubview:scrollView];
	
	[scrollView addSubview:page.view];
	
	
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
	
}

@end
