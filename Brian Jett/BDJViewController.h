//
//  BDJViewController.h
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDJViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *viewControllers;
@property (strong, nonatomic) NSArray *viewControllers1;

- (UIViewController *)viewControllerAtIndex:(NSUInteger)index;
- (IBAction)showMenu:(id)sender;

@end
