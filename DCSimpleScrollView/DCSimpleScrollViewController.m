//
//  DCSimpleScrollViewController.m
//  DCSimpleScrollView
//
//  Created by Eric Knapp on 4/15/11.
//  Copyright 2011 Dovetail Computing, Inc. All rights reserved.
//

#import "DCSimpleScrollViewController.h"


@implementation DCSimpleScrollViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    
    CGRect baseRect = CGRectMake(0, 20, 1024, 748);    
    UIView *baseView = [[UIView alloc] initWithFrame:baseRect];
    baseView.backgroundColor = [UIColor blackColor];
    self.view = baseView;
    [baseView release];
    
    UIImageView *imageView = [[UIImageView alloc] 
                              initWithImage:[UIImage imageNamed:@"leaves2-50.png"]];

    float imageWidth = imageView.frame.size.width;
    float imageHeight = imageView.frame.size.height;
    
    CGRect scrollRect =  CGRectMake(0, 0, 1024, 748);
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollRect];
    scrollView.contentSize = CGSizeMake(imageWidth, imageHeight);
    
    [scrollView addSubview:imageView];
    
    [self.view addSubview:scrollView];
    
    [imageView release];
    [scrollView release];
        
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return UIDeviceOrientationIsLandscape(interfaceOrientation);
}

- (void)dealloc
{
    [super dealloc];
}


@end
