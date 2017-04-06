//
//  AppDelegate.m
//  McAnimation_NSViewAnimation
//
//  Created by Hao Tan on 12-5-18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)startAnimation:(id)sender;
{    
    //style 1
    [NSAnimationContext beginGrouping];
    [[NSAnimationContext currentContext] setDuration:2];
    float rotation = animationView.frameRotation;
    [[animationView animator] setFrameRotation:rotation+360];
    [[NSAnimationContext currentContext] setCompletionHandler:^{
        NSLog(@"All done!");
    }];
    [NSAnimationContext endGrouping];
    
    //style 2
//    [NSAnimationContext runAnimationGroup:^(NSAnimationContext *context) {
//        [context setDuration:2.0];
//        float rotation = animationView.frameRotation;
////        [[animationView animator] setFrameOrigin:NSZeroPoint];
////        [[animationView animator] setAlphaValue:0.0];
//        [[animationView animator] setFrameRotation:rotation+360];
//    } completionHandler:^{
//        NSLog(@"All done!");
//    }];
}

@end
