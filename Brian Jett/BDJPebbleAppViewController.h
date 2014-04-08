//
//  BDJPebbleAppViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/5/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDJPebbleAppViewController : UIViewController

@property IBOutlet UIImageView *imageView;
@property NSString *fullUrl;

- (IBAction)close:(id)sender;

@end
