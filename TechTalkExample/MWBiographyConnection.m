//
//  MWBiographyConnection.m
//  TechTalkExample
//
//  Created by Max Woolf on 04/11/2012.
//  Copyright (c) 2012 MaxWoolf. All rights reserved.
//

#import "MWBiographyConnection.h"

@implementation MWBiographyConnection
@synthesize delegate;

-(id)initWithArtistName:(NSString *)anArtist delegate:(id)aDelegate
{
    artistName = anArtist;
    NSString *urlString = [NSString stringWithFormat:@"http://developer.echonest.com/api/v4/artist/biographies?api_key=FILDTEOIK2HBORODV&name=%@&format=json&results=1", [anArtist stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSURL *requestURL = [NSURL URLWithString:urlString];
    request = [[NSURLRequest alloc] initWithURL:requestURL];
    connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [self setDelegate:aDelegate];
    return [super init];
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    receivedData = [[NSMutableData alloc] init];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [receivedData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    [self parseData];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"%@", [error localizedDescription]);
}

-(void)parseData
{
    NSJSONSerialization *json = [NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingAllowFragments error:nil];
    biography = [json valueForKeyPath:@"response.biographies.text"];
    NSLog(@"%@", biography);
}

@end
