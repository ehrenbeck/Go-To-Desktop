//
//  PWStatusView.m
//  GoToDesktop
//
//  Created by Blake Ehrenbeck on 6/14/14.
//  Copyright (c) 2014 Blake Ehrenbeck. All rights reserved.
//

#import "PWStatusView.h"

@implementation PWStatusView

- (void)mouseUp:(NSEvent *)event {
    if([event modifierFlags] & NSControlKeyMask) {
        [NSApp sendAction:self.rightAction to:self.target from:self];
    } else {
        [NSApp sendAction:self.action to:self.target from:self];
    }
    
}
- (void)rightMouseUp:(NSEvent *)event {
    [NSApp sendAction:self.rightAction to:self.target from:self];
    
}

- (void)drawRect:(NSRect)rect {
    [super drawRect:rect];
    
    [self.image drawInRect:self.bounds fromRect:NSZeroRect operation:NSCompositeSourceOver fraction:1];
    }



@end
