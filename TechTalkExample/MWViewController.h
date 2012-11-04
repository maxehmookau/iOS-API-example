//
//  MWViewController.h
//  TechTalkExample
//
//  Created by Max Woolf on 04/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWViewController : UIViewController
{
    IBOutlet UIButton *searchButton;
    IBOutlet UITextField *artistField;
}

-(IBAction)didPressSearchButton:(id)sender;
@end
