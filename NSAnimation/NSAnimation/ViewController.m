//
//  ViewController.m
//  NSAnimation
//
//  Created by 赵睿 on 30/05/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  
}

- (IBAction)beginAnimation:(id)sender {
  self.animation = [[Animation alloc] initWithDuration:2.0 animationCurve:NSAnimationLinear];
  [self.animation setFrameRate:30];
  [self.animation setAnimationBlockingMode:NSAnimationNonblocking];
  [self.animation startAnimation];
}

- (void)setRepresentedObject:(id)representedObject {
  [super setRepresentedObject:representedObject];

  // Update the view, if already loaded.
}

- (IBAction)beginHighAnimation:(NSButton *)sender {
  HeightAnimation* animation = [[HeightAnimation alloc] initWithView:_demoBox finalHeight:self.demoBox.frame.size.height - 30 duration:3];
  [animation startAnimation];
}

@end
