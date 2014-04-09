//
//  BDJGenericContentViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJGenericContentViewController.h"

@interface BDJGenericContentViewController ()

@end

@implementation BDJGenericContentViewController

- (IBAction)showEmail:(id)sender {
	
	// email subject
	NSString *emailTitle = @"";
	
	// email content
	NSString *messageBody = @"";
	
	// to address
	NSArray *toRecipients = @[@"bdjett@me.com"];
	
	MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
	mc.mailComposeDelegate = self;
	[mc setSubject:emailTitle];
	[mc setMessageBody:messageBody isHTML:NO];
	[mc setToRecipients:toRecipients];
	mc.navigationBar.tintColor = [UIColor blackColor];
	mc.navigationBar.translucent = NO;
	
	// present mail view controller on screen
	[self presentViewController:mc animated:YES completion:nil];
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
    
	self.resumeButton.tintColor = [UIColor whiteColor];
	self.resumeButton.layer.cornerRadius = 4;
	self.resumeButton.layer.borderWidth = 1;
	self.resumeButton.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.emailButton.tintColor = [UIColor whiteColor];
	self.emailButton.layer.cornerRadius = 4;
	self.emailButton.layer.borderWidth = 1;
	self.emailButton.layer.borderColor = [UIColor whiteColor].CGColor;
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Mail Compose View Controller

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
	
	switch (result) {
		case MFMailComposeResultCancelled:
			NSLog(@"Mail cancelled");
			break;
		case MFMailComposeResultSaved:
			NSLog(@"Mail saved");
			break;
		case MFMailComposeResultSent:
			NSLog(@"Mail sent");
			break;
		case MFMailComposeResultFailed:
			NSLog(@"Mail sent failure %@", [error localizedDescription]);
			break;
		default:
			break;
	}
	
	// close mail interface
	[self dismissViewControllerAnimated:YES completion:nil];
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
