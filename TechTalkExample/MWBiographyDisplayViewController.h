//
//  MWBiographyDisplayViewController.h
//  TechTalkExample
//
//  Created by Max Woolf on 10/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWBiographyDisplayViewController : UIViewController
{
    IBOutlet UITextView *biographyView;
    NSString *biography;
}

-(id)initWithBiography:(NSString *)biographyText;

@property (nonatomic) UITextView *biographyView;
@end
