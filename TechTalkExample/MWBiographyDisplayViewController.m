//
//  MWBiographyDisplayViewController.m
//  TechTalkExample
//
//  Created by Max Woolf on 10/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import "MWBiographyDisplayViewController.h"

@interface MWBiographyDisplayViewController ()

@end

@implementation MWBiographyDisplayViewController
@synthesize biographyView;

-(id)initWithBiography:(NSString *)biographyText
{
    
    biography = biographyText;
    return [self init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [biographyView setText:biography];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
