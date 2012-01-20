//
//  AppDelegate.h
//  Colors
//
//  Created by Dave Sferra on 12-01-19.
//  Copyright (c) 2012 Blue Hawk Solutions inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    IBOutlet NSButton *addButton;
    IBOutlet NSTextField *caseIndex;
        IBOutlet NSTextField *redValue;
        IBOutlet NSTextField *greenValue;
        IBOutlet NSTextField *blueValue;
    NSFileHandle *fileHandle;
    
}

@property (assign) IBOutlet NSWindow *window;


-(IBAction)addTo:(id)sender;
@end
