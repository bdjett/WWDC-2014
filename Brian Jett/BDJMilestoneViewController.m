//
//  BDJMilestoneViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJMilestoneViewController.h"

@interface BDJMilestoneViewController ()

@end

@implementation BDJMilestoneViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
	
    [super viewDidLoad];
    
	// set background image
	self.backgroundImageView.image = [UIImage imageNamed:self.backgroundImage];
	
	// set icon image
	self.iconImageView.image = [UIImage imageNamed:self.iconImage];
	
	// set title
	self.titleLabel.text = self.titleText;
	
	// set subtitle
	self.subtitleLabel.text = self.subtitleText;
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
