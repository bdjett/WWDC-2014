//
//  BDJProjectViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface BDJProjectViewController : UIViewController

@property IBOutlet UIButton *seeProjectButton;
@property NSString *projectUrl;
@property NSUInteger pageIndex;

@end
