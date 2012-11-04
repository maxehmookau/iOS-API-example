//
//  MWViewController.m
//  TechTalkExample
//
//  Created by Max Woolf on 04/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import "MWViewController.h"
#import "MWBiographyConnection.h"

@interface MWViewController ()

@end

@implementation MWViewController

-(void)didPressSearchButton:(id)sender
{
    //This happens when the search button is pressed and we have access to the text field!
    MWBiographyConnection *connection = [[MWBiographyConnection alloc] initWithArtistName:[artistField text] delegate:self];
    [connection start];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
