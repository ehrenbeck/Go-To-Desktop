//
//  PWPreferencesWindowController.h
//  GoToDesktop
//
//  Created by Blake Ehrenbeck on 6/14/14.
//  Copyright (c) 2014 Blake Ehrenbeck. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PWPreferencesWindowController : NSWindowController{

    BOOL shouldOpenFinderWindow;

}

@property IBOutlet NSButton *openFinderCheckbox;

-(IBAction)save:(id)sender;

@end
