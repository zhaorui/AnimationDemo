//
//  AppDelegate.m
//  McAnimation_NSViewAnimation
//
//  Created by Hao Tan on 12-5-18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self.window.contentView setWantsLayer:YES];
    [animationView.layer setAnchorPoint:NSMakePoint(0.5, 0.5)];
}

- (IBAction)startAnimation:(id)sender;
{    
    CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyframeAnimation.duration = 2;
    keyframeAnimation.repeatCount = NSIntegerMax;
    CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 0.6);
    CGMutablePathRef path = CGPathCreateMutable();
    NSPoint center = NSMakePoint([self.window.contentView frame].size.width/2, [self.window.contentView frame].size.height/2);
    CGPathAddArc(path, &transform, center.x, center.y, 70, 0, 2*pi, NO);
    keyframeAnimation.path = path;
    CGPathRelease(path);
    [animationView.layer addAnimation:keyframeAnimation forKey:@""];
}

@end
