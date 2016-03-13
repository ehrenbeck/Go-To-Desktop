//
//  PWStatusView.h
//  GoToDesktop
//
//  Created by Blake Ehrenbeck on 6/14/14.
//  Copyright (c) 2014 Blake Ehrenbeck. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PWStatusView : NSControl{


}

@property (strong) NSImage *image;
@property (assign) id target;
@property (assign) SEL action, rightAction;

@end
