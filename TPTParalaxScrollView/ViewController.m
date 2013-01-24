//
//  ViewController.m
//  TPTParalaxScrollView
//
//  Created by James Rutherford on 2013-01-21.
//  Copyright (c) 2013 Braxio Interactive. All rights reserved.
//

#import "ViewController.h"
#import "SamplePage.h"
#import "TPTParalaxScrollView.h"

#define numberOfPages 3

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;
@synthesize page1;
@synthesize page2;
@synthesize page3;

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
	
	page1 = [[SamplePage alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
	page2 = [[SamplePage alloc] initWithFrame:CGRectMake(320, 0, ScreenWidth, ScreenHeight)];
	page3 = [[SamplePage alloc] initWithFrame:CGRectMake(640, 0, ScreenWidth, ScreenHeight)];
	
	page1.topImage.image = [UIImage imageNamed:@"amy"];
	page2.topImage.image = [UIImage imageNamed:@"kate"];
	page3.topImage.image = [UIImage imageNamed:@"scarlett"];
	
	page1.titleLabel.text = @"Actress Amy Adams";
	page1.descriptionLabel.text = @"Amy Lou Adams[1] (born August 20, 1974) is an American actress and singer. Adams was born in Vicenza, Italy, to American parents, and began her performing career on stage in dinner theaters, before making her screen debut in the 1999 black comedy film Drop Dead Gorgeous. After a series of television guest appearances and roles in B movies, she was cast in the role of Brenda Strong in 2002's Catch Me If You Can, but her breakthrough role was in the 2005 independent film Junebug, playing Ashley Johnsten, for which she received critical acclaim and an Academy Award nomination for Best Supporting Actress.";
	
	page2.titleLabel.text = @"Swimsuit Model Kate Upton";
	page2.descriptionLabel.text = @"Katherine Upton (born June 10, 1992) is an American model and actress, known for her appearances in the Sports Illustrated Swimsuit Issue first in 2011, when she was named Rookie of the Year, and again in 2012, when she was announced as the cover model.  Upton was born in St. Joseph, Michigan and raised in Melbourne, Florida. She is the daughter of Shelley, a former Texas state tennis champion, and Jeff Upton. She attended Holy Trinity Episcopal Academy. Her uncle is U.S. Representative Fred Upton. Upton's great-grandfather, Frederick Upton, was co-founder of appliance manufacturer and marketer Whirlpool Corporation.";
	
	page3.titleLabel.text = @"Actress Scarlett Johansson";
	page3.descriptionLabel.text = @"Scarlett Johansson (born November 22, 1984)[1] is an American actress, model and singer. Johansson made her film debut in North (1994) and was later nominated for the Independent Spirit Award for Best Female Lead for her performance in Manny & Lo (1996). She rose to further prominence with her roles in The Horse Whisperer (1998) and Ghost World (2001). She shifted to adult roles with her performances in Girl with a Pearl Earring (2003) and Sofia Coppola's Lost in Translation (2003), for which she won a BAFTA award for Best Actress in a Leading Role. Both films earned her Golden Globe Award nominations.";
	
	[self.view addSubview:scrollView];
	
	[scrollView addSubview:page1];
	[scrollView addSubview:page2];
	[scrollView addSubview:page3];
	
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
