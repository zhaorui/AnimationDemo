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
  id animationTarget = nil;
  if (matrix.selectedColumn == 0)
  {
    animationTarget = animationView;
  }else
  {
    animationTarget = self.window;
  }
  
  NSRect startFrame = [animationTarget frame];
  NSRect endFrame = NSMakeRect(0, 0, startFrame.size.width / 2, startFrame.size.height / 2);
  NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                              animationTarget,NSViewAnimationTargetKey,
                              NSViewAnimationFadeInEffect,NSViewAnimationEffectKey,
                              [NSValue valueWithRect:startFrame],NSViewAnimationStartFrameKey,
                              [NSValue valueWithRect:endFrame],NSViewAnimationEndFrameKey, nil];
  
  NSDictionary *dictionary2 = [[NSDictionary alloc] initWithObjectsAndKeys:
                               animationTarget,NSViewAnimationTargetKey,
                               NSViewAnimationFadeOutEffect,NSViewAnimationEffectKey,
                               [NSValue valueWithRect:endFrame],NSViewAnimationStartFrameKey,
                               nil];
  
  NSViewAnimation *animation = [[NSViewAnimation alloc] initWithViewAnimations:[NSArray arrayWithObjects:dictionary, dictionary2,nil]];
  animation.delegate = self;
  animation.duration = 2;
  //NSAnimationBlocking阻塞
  //NSAnimationNonblocking异步不阻塞
  //NSAnimationNonblockingThreaded线程不阻塞
  [animation setAnimationBlockingMode:NSAnimationNonblockingThreaded];
  [animation startAnimation];
}

- (void)animationDidEnd:(NSAnimation*)animation
{
  NSLog(@"%d",[[NSThread currentThread] isMainThread]);
  NSLog(@"The animation did end !");
}

@end
