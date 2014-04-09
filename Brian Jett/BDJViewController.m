//
//  BDJViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJViewController.h"
#import "BDJMilestoneViewController.h"
#import "BDJAboutMeViewController.h"
#import "BDJGenericContentViewController.h"
#import "BDJEducationViewController.h"
#import "BDJProjectViewController.h"
#import "BDJMenuViewController.h"

@interface BDJViewController ()

@end

@implementation BDJViewController

- (IBAction)showMenu:(id)sender {
	
	[self performSegueWithIdentifier:@"showMenu" sender:self];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
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
	
	[self setNeedsStatusBarAppearanceUpdate];
	
	// List of view controller IDs
	self.viewControllers = @[@"Milestone1", @"AboutMe", @"Milestone2", @"WebDesign", @"WebDesign2", @"WebDesign3", @"Milestone3", @"Education", @"Milestone4", @"Professional1", @"Professional2", @"Milestone5", @"Project1", @"Project2", @"Project3", @"Project4", @"Project5", @"Milestone6", @"TechSkills", @"WWDC", @"Future", @"End"];
	
	// Set up page view controller
	self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
	self.pageViewController.dataSource = self;
	
	// Set first view controller of page view controller
	BDJMilestoneViewController *selectedController = (BDJMilestoneViewController *)[self viewControllerAtIndex:0];
	self.viewControllers1 = @[selectedController];
	[self.pageViewController setViewControllers:self.viewControllers1 direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
	
	// Set page view controller to be size of window
	self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
	
	// Add page view controller as child
	[self addChildViewController:self.pageViewController];
	[self.view addSubview:self.pageViewController.view];
	[self.pageViewController didMoveToParentViewController:self];
	
	// Button
	UIButton *menuButton = [[UIButton alloc] init];
	menuButton.frame = CGRectMake(20, 30, 20, 20);
	[menuButton setImage:[UIImage imageNamed:@"menu.png"] forState:UIControlStateNormal];
	[menuButton addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:menuButton];
	
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)viewControllerAtIndex:(NSUInteger)index {
	
	if (([self.viewControllers count] == 0) || (index >= [self.viewControllers count])) {
		// if there are no view controllers in the page view or the given index is larger than the number of view controllers
		return nil;
	}
	
	if (index == 0) {
		// first view controller
		BDJMilestoneViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Milestone1"];
		vc.pageIndex = index;
		vc.backgroundImage = @"red.png";
		vc.iconImage = @"start.png";
		vc.titleText = @"It Starts Here";
		vc.subtitleText = @"";
		return vc;
	} else if (index == 1) {
		// second view controller
		BDJAboutMeViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AboutMe"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 2) {
		// third view controller
		BDJMilestoneViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Milestone2"];
		vc.pageIndex = index;
		vc.backgroundImage = @"blue.png";
		vc.iconImage = @"code.png";
		vc.titleText = @"First Steps";
		vc.subtitleText = @"";
		return vc;
	} else if (index == 3) {
		// fourth view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"WebDesign"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 4) {
		// fifth view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"WebDesign2"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 5) {
		// sixth view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"WebDesign3"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 6) {
		// seventh view controller
		BDJMilestoneViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Milestone3"];
		vc.pageIndex = index;
		vc.backgroundImage = @"orange.png";
		vc.iconImage = @"education.png";
		vc.titleText = @"Education";
		vc.subtitleText = @"";
	 	return vc;
	} else if (index == 7) {
		// eighth view controller
		BDJEducationViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Education"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 8) {
		// ninth view controller
		BDJMilestoneViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Milestone4"];
		vc.pageIndex = index;
		vc.backgroundImage = @"green.png";
		vc.iconImage = @"work.png";
		vc.titleText = @"Professional";
		vc.subtitleText = @"";
		return vc;
	} else if (index == 9) {
		// tenth view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Professional1"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 10) {
		// eleventh view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Professional2"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 11) {
		// twelfth view controller
		BDJMilestoneViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Milestone5"];
		vc.pageIndex = index;
		vc.backgroundImage = @"purple.png";
		vc.iconImage = @"star.png";
		vc.titleText = @"My Work";
		vc.subtitleText = @"";
		return vc;
	} else if (index == 12) {
		// thirteenth view controller
		BDJProjectViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Project1"];
		vc.pageIndex = index;
		vc.projectUrl = @"http://logicalpixels.com";
		return vc;
	} else if (index == 13) {
		// fourteenth view controller
		BDJProjectViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Project2"];
		vc.pageIndex = index;
		vc.projectUrl = @"http://carolinemosey.com";
		return vc;
	} else if (index == 14) {
		// fiftenth view controller
		BDJProjectViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Project3"];
		vc.pageIndex = index;
		vc.projectUrl = @"http://genhotels.com";
		return vc;
	} else if (index == 15) {
		// sixteenth view controller
		BDJProjectViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Project4"];
		vc.pageIndex = index;
		vc.projectUrl = @"mdeapp.png";
		return vc;
	} else if (index == 16) {
		// sevententh view controller
		BDJProjectViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Project5"];
		vc.pageIndex = index;
		vc.projectUrl = @"buseta.png";
		return vc;
	} else if (index == 17) {
		// eighteenth view controller
		BDJMilestoneViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Milestone6"];
		vc.pageIndex = index;
		vc.backgroundImage = @"blue.png";
		vc.iconImage = @"work.png";
		vc.titleText = @"Technical Skills";
		vc.subtitleText = @"";
		return vc;
	} else if (index == 18) {
		// nineteenth view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TechSkills"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 19) {
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"WWDC"];
		vc.pageIndex = index;
		return vc;
	}else if (index == 20) {
		// twentieth view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Future"];
		vc.pageIndex = index;
		return vc;
	} else if (index == 21) {
		// tenty-first view controller
		BDJGenericContentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"End"];
		vc.pageIndex = index;
		return vc;
	}else {
		return nil;
	}
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
	
	// get index of current view controller in array
	NSString *ident = viewController.restorationIdentifier;
	NSUInteger index = [self.viewControllers indexOfObject:ident];
	
	if ((index == 0) || (index == NSNotFound)) {
		// if first view controller or view controller not found
		return nil;
	}
	
	index--;
	
	return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
	
	// get index of current view controller in array
	NSString *ident = viewController.restorationIdentifier;
	NSUInteger index = [self.viewControllers indexOfObject:ident];
	
	if (index == NSNotFound) {
		// index doesn't exist in array
		return nil;
	}
	
	index++;
	
	if (index == [self.viewControllers count]) {
		// is on last view controller
		return nil;
	} else {
		return [self viewControllerAtIndex:index];
	}
}

/*
- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
	
	// return number of view controllers
	return [self.viewControllers count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
	
	return 0;
}
*/

@end
