//
//  MWBiographyConnection.h
//  TechTalkExample
//
//  Created by Max Woolf on 04/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MWBiographyConnection;

@protocol MWBiographyConnectionDelegate <NSObject>

-(void)finishedGettingBiographyData;

@end

@interface MWBiographyConnection : NSURLConnection <NSURLConnectionDataDelegate>
{
    NSURLConnection *connection;
    NSURLRequest *request;
    NSString *artistName;
    NSString *biography;
    NSMutableData *receivedData;
    id delegate;
}

-(id)initWithArtistName:(NSString *)anArtist delegate:(id)aDelegate;
-(void)parseData;

@property (nonatomic) id delegate;
@end
