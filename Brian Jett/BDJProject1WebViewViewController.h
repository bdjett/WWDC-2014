//
//  BDJWebViewViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDJProject1WebViewViewController : UIViewController

@property IBOutlet UIBarButtonItem *openInSafariButton;
@property IBOutlet UIWebView *webView;
@property NSString *fullUrl;

- (IBAction)openInSafari:(id)sender;
- (IBAction)close:(id)sender;

@end
