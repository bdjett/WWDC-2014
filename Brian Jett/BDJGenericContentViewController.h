//
//  BDJGenericContentViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface BDJGenericContentViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property IBOutlet UIButton *emailButton;
@property IBOutlet UIButton *resumeButton;
@property NSUInteger pageIndex;

- (IBAction)showEmail:(id)sender;

@end
