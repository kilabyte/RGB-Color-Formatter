//
//  AppDelegate.m
//  Colors
//
//  Created by Dave Sferra on 12-01-19.
//  Copyright (c) 2012 Blue Hawk Solutions inc. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [blueValue setTarget:self];
    [blueValue setAction:@selector(addTo:)];
}


-(IBAction)addTo:(id)sender{
    double r = ((double)[redValue intValue]/255);
    double g = ((double)[greenValue intValue]/255);
    double b = ((double)[blueValue intValue]/255);
    int index = [caseIndex intValue];
    if ([caseIndex intValue] < 1) {
        index = 0;
    }
    
    NSLog(@"%f,%f,%f",r,g,b);
    NSString *path = @"~/Desktop/Colors.txt";
    path = [path stringByExpandingTildeInPath];
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil];
    }
    NSLog(@"%@",path);

    NSString *s = [NSString stringWithFormat:@"case %i:\n a.red = %f;\n a.green = %f;\n a.blue = %f;\n break;\n",index,r,g,b];
    NSString *c = [NSString stringWithContentsOfFile:path];
    c = [c stringByAppendingString:s];
    [c writeToFile:path atomically:YES];
    index++;
    [caseIndex setStringValue:[NSString stringWithFormat:@"%i",index]];
    [redValue becomeFirstResponder];
}


@end
