//
//  BDJEducationViewController.m
//  Brian Jett
//
//  Created by Brian Jett on 4/4/14.
//  Copyright (c) 2014 Brian Jett. All rights reserved.
//

#import "BDJEducationViewController.h"

@interface BDJEducationViewController ()

@end

@implementation BDJEducationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
	
    [super viewDidLoad];
    
	CLGeocoder *geocoder = [[CLGeocoder alloc] init];
	[geocoder geocodeAddressString:@"Indiana University, Bloomington, IN" completionHandler:^(NSArray *placemarks, NSError *error) {
		if (placemarks && placemarks.count > 0) {
			CLPlacemark *topResult = [placemarks objectAtIndex:0];
			MKPlacemark *placemark = [[MKPlacemark alloc] initWithPlacemark:topResult];
			
			[self.mapView addAnnotation:placemark];
			
			CLLocationCoordinate2D venue = placemark.coordinate;
			
			[self.mapView setCenterCoordinate:venue];
			
			MKCoordinateRegion region = self.mapView.region;
			region.span.longitudeDelta = 0.1;
			region.span.latitudeDelta = 0.1;
			[self.mapView setRegion:region animated:YES];
		}
	}];
}

- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
