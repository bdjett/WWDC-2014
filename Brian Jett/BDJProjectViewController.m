//
//  BDJProjectViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJProjectViewController.h"
#import "BDJProject1WebViewViewController.h"

@interface BDJProjectViewController ()

@end

@implementation BDJProjectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
	
    [super viewDidLoad];
    
	self.seeProjectButton.tintColor = [UIColor whiteColor];
	self.seeProjectButton.layer.cornerRadius = 4;
	self.seeProjectButton.layer.borderWidth = 1;
	self.seeProjectButton.layer.borderColor = [UIColor whiteColor].CGColor;
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    BDJProject1WebViewViewController *vc = [[segue destinationViewController] viewControllers][0];
	vc.fullUrl = self.projectUrl;
}

@end
