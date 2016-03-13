//
//  PWPreferencesWindowController.m
//  GoToDesktop
//
//  Created by Blake Ehrenbeck on 6/14/14.
//  Copyright (c) 2014 Blake Ehrenbeck. All rights reserved.
//

#import "PWPreferencesWindowController.h"

@interface PWPreferencesWindowController ()

@end

@implementation PWPreferencesWindowController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
    }
    return self;
}

-(void)awakeFromNib{

    NSLog(@"foo");
    [_openFinderCheckbox setState:[[NSUserDefaults standardUserDefaults] boolForKey:@"openFinder"]];


}

-(IBAction)save:(id)sender{

    [[NSUserDefaults standardUserDefaults] setBool:[_openFinderCheckbox state] forKey:@"openFinder"];
    //BOOL shouldOpenFinder = [[NSUserDefaults standardUserDefaults]boolForKey:@"openFinder"];
   // NSLog(@"%li",(long)shouldOpenFinder);
    

}

- (IBAction)showFinder:(id)sender {
    
    NSLog(@"Show Finder Button Clicked");
    
    NSString *filePath = @"/Users";
    [[NSWorkspace sharedWorkspace] openFile:filePath withApplication:@"Finder"];
    
}


- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
