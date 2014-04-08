//
//  BDJPebbleAppViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/5/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJPebbleAppViewController.h"

@interface BDJPebbleAppViewController ()

@end

@implementation BDJPebbleAppViewController

- (IBAction)close:(id)sender {
	
	// dismiss modal view controller
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
    
	self.imageView.image = [UIImage imageNamed:self.fullUrl];
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
