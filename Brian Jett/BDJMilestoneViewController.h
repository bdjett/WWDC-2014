//
//  BDJMilestoneViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDJMilestoneViewController : UIViewController

@property IBOutlet UIImageView *backgroundImageView;
@property IBOutlet UIImageView *iconImageView;
@property IBOutlet UILabel *titleLabel;
@property IBOutlet UILabel *subtitleLabel;
@property NSString *backgroundImage;
@property NSString *iconImage;
@property NSString *titleText;
@property NSString *subtitleText;
@property NSUInteger pageIndex;

@end
