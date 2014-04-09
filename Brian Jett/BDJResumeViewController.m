//
//  BDJResumeViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/8/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJResumeViewController.h"

@interface BDJResumeViewController ()

@end

@implementation BDJResumeViewController

- (IBAction)close:(id)sender {
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
	
    [super viewDidLoad];
    
	self.navigationController.navigationBar.tintColor = [UIColor blackColor];
	self.navigationController.toolbar.tintColor = [UIColor blackColor];
	
	NSURL *url = [NSURL URLWithString:@"http://logicalpixels.com/resume.pdf"];
	NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
	[self.webView loadRequest:requestObj];
	self.webView.scalesPageToFit = YES;
	self.webView.scrollView.zoomScale = 1.0;
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
