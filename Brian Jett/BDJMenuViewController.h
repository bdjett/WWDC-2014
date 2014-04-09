//
//  BDJMenuViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/8/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDJMenuViewController : UIViewController <UIScrollViewDelegate>

@property IBOutlet UIScrollView *scrollView;
@property IBOutlet UIImageView *button1;
@property IBOutlet UIImageView *button2;
@property IBOutlet UIImageView *button3;
@property IBOutlet UIImageView *button4;
@property IBOutlet UIImageView *button5;
@property IBOutlet UIImageView *button6;
@property IBOutlet UIImageView *button7;

- (IBAction)closeMenu:(id)sender;
- (IBAction)slide1:(id)sender;
- (IBAction)slide2:(id)sender;
- (IBAction)slide3:(id)sender;
- (IBAction)slide4:(id)sender;
- (IBAction)slide5:(id)sender;
- (IBAction)slide6:(id)sender;
- (IBAction)slide7:(id)sender;

@end
