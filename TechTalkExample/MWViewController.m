//
//  MWViewController.m
//  TechTalkExample
//
//  Created by Max Woolf on 04/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import "MWViewController.h"
#import "MWBiographyConnection.h"
#import "MWBiographyDisplayViewController.h"

@interface MWViewController ()

@end

@implementation MWViewController

-(void)didPressSearchButton:(id)sender
{
    //This happens when the search button is pressed and we have access to the text field!
    MWBiographyConnection *connection = [[MWBiographyConnection alloc] initWithArtistName:[artistField text] delegate:self];
    [connection start];
}

-(void)finishedGettingBiography:(MWBiographyConnection *)aBiography
{
    MWBiographyDisplayViewController *bioVC = [[MWBiographyDisplayViewController alloc] initWithBiography:[aBiography biography]];
    
    [self.navigationController pushViewController:bioVC animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    //Reset artist field if the page is reloaded
    [artistField setText:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
