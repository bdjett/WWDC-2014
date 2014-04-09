//
//  BDJMenuViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/8/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJMenuViewController.h"
#import "BDJViewController.h"

@interface BDJMenuViewController ()

@end

@implementation BDJMenuViewController

- (IBAction)closeMenu:(id)sender {
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide1:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *vc = [parent viewControllerAtIndex:0];
	
	[parent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide2:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *previous = [parent viewControllerAtIndex:1];
	UIViewController *vc = [parent viewControllerAtIndex:2];
	
	__weak typeof(parent) weakParent = parent;
	
	[parent.pageViewController setViewControllers:@[previous] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:^(BOOL finished) {
		[weakParent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	}];
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide3:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *previous = [parent viewControllerAtIndex:5];
	UIViewController *vc = [parent viewControllerAtIndex:6];
	
	__weak typeof(parent) weakParent = parent;
	
	[parent.pageViewController setViewControllers:@[previous] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:^(BOOL finished) {
		[weakParent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	}];
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide4:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *previous = [parent viewControllerAtIndex:7];
	UIViewController *vc = [parent viewControllerAtIndex:8];
	
	__weak typeof(parent) weakParent = parent;
	
	[parent.pageViewController setViewControllers:@[previous] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:^(BOOL finished) {
		[weakParent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	}];
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide5:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *previous = [parent viewControllerAtIndex:10];
	UIViewController *vc = [parent viewControllerAtIndex:11];
	
	__weak typeof(parent) weakParent = parent;
	
	[parent.pageViewController setViewControllers:@[previous] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:^(BOOL finished) {
		[weakParent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	}];
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide6:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *previous = [parent viewControllerAtIndex:16];
	UIViewController *vc = [parent viewControllerAtIndex:17];
	
	__weak typeof(parent) weakParent = parent;
	
	[parent.pageViewController setViewControllers:@[previous] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:^(BOOL finished) {
		[weakParent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	}];
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)slide7:(id)sender {
	
	BDJViewController *parent = (BDJViewController *)self.presentingViewController;
	
	UIViewController *previous = [parent viewControllerAtIndex:19];
	UIViewController *vc = [parent viewControllerAtIndex:20];
	
	__weak typeof(parent) weakParent = parent;
	
	[parent.pageViewController setViewControllers:@[previous] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:^(BOOL finished) {
		[weakParent.pageViewController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
	}];
	
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
	
	UITapGestureRecognizer *s1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide1:)];
    s1.numberOfTapsRequired=1;
    [self.button1 addGestureRecognizer:s1];
	
	UITapGestureRecognizer *s2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide2:)];
    s2.numberOfTapsRequired=1;
    [self.button2 addGestureRecognizer:s2];
	
	UITapGestureRecognizer *s3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide3:)];
    s3.numberOfTapsRequired=1;
    [self.button3 addGestureRecognizer:s3];
	
	UITapGestureRecognizer *s4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide4:)];
    s4.numberOfTapsRequired=1;
    [self.button4 addGestureRecognizer:s4];
	
	UITapGestureRecognizer *s5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide5:)];
    s5.numberOfTapsRequired=1;
    [self.button5 addGestureRecognizer:s5];
	
	UITapGestureRecognizer *s6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide6:)];
    s6.numberOfTapsRequired=1;
    [self.button6 addGestureRecognizer:s6];
	
	UITapGestureRecognizer *s7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slide7:)];
    s7.numberOfTapsRequired=1;
    [self.button7 addGestureRecognizer:s7];
	
}

- (void)viewDidAppear:(BOOL)animated {
	
	self.scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
	self.scrollView.contentSize = CGSizeMake(320, 490);
	self.scrollView.delegate = self;
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
