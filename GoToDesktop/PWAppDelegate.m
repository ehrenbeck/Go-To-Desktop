//
//  PWAppDelegate.m
//  GoToDesktop
//
//  Created by Blake Ehrenbeck on 6/13/14.
//  Copyright (c) 2014 Blake Ehrenbeck. All rights reserved.
//

#import "PWAppDelegate.h"
#import "PWStatusView.h"
#import "PWPreferencesWindowController.h"
#import "PWWelcomeWindowController.h"

@implementation PWAppDelegate

-(void)awakeFromNib{
    
    /*
        _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
        //[_statusItem setMenu:_statusMenu];

    NSImage *statusImage = [NSImage imageNamed:@"status-icon"];
    
    
    _view = [[PWStatusView alloc] init];
    _view.image = statusImage;
        
    
    // _statusItem.view = view;
    _view.target = self;
    _view.action = @selector(click:);
    _view.rightAction = @selector(rightClick:);
    [_statusItem setView:_view];
 */
    
}


-(void)applicationDidFinishLaunching:(NSNotification *)notification{
    
    
        self.welcomeController = [[PWWelcomeWindowController alloc] initWithWindowNibName:@"PWWelcomeWindowController"];
        [self.welcomeController.window makeKeyAndOrderFront:self];
    
    NSImage *statusImage = [NSImage imageNamed:@"status-icon"];
    
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    //[_statusItem setMenu:_statusMenu];
    
    _view = [[PWStatusView alloc] init];
    _view.image = statusImage;
    
    
    // _statusItem.view = view;
    _view.target = self;
    _view.action = @selector(click:);
    _view.rightAction = @selector(rightClick:);
    [_statusItem setView:_view];
    

    }
                                                            
-(void)applicationWillTerminate:(NSNotification *)notification{

    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"firstLaunch"];

}
                                                            

-(void)click:(id)sender{

    NSLog(@"click");
    
    [[NSWorkspace sharedWorkspace] hideOtherApplications];


    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"openFinder"]) {
        NSLog(@"Opening Finder window");
    /*
        NSAppleScript *finderScript;
        NSString *finderStringScript = @"tell application \"Finder\" to make new Finder window";
        finderScript = [[NSAppleScript alloc] initWithSource:finderStringScript];
        [finderScript executeAndReturnError:nil];
        NSAppleEventDescriptor *event = [finderScript executeAndReturnError:nil];
        NSLog(@"%@",event.description);
    */
        
        /*
        NSString *folder = @"~/";
        [[NSWorkspace sharedWorkspace] openFile:folder withApplication:@"Finder"];
    */
        
        system("open .");
    }
    
    
    
}

-(void)rightClick:(id)sender{

        
    if (_windowController == nil) {
        _windowController = [[PWPreferencesWindowController alloc] initWithWindowNibName:@"PWPreferencesWindowController"];
    }
    
    [_windowController.window makeKeyAndOrderFront:self];
    
}

-(IBAction)openPreferences:(id)sender{

    [self rightClick:self];

}


-(BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag{

    [self click:self];
    return YES;

}
 

@end
