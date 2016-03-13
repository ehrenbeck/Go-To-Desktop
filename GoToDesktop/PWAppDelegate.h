//
//  PWAppDelegate.h
//  GoToDesktop
//
//  Created by Blake Ehrenbeck on 6/13/14.
//  Copyright (c) 2014 Blake Ehrenbeck. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PWStatusView.h"
@class PWPreferencesWindowController;
@class PWWelcomeWindowController;


@interface PWAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSMenu *statusMenu;
@property (strong) NSStatusItem *statusItem;
@property (strong) PWPreferencesWindowController *windowController;
@property (strong) PWWelcomeWindowController *welcomeController;
@property (strong) PWStatusView *view;


-(IBAction)openPreferences:(id)sender;

@end
