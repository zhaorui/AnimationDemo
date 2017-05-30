//
//  HeightAnimation.m
//  NSAnimation
//
//  Created by 赵睿 on 30/05/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "HeightAnimation.h"


@implementation HeightAnimation

- (id)initWithView:(NSView*)view
       finalHeight:(CGFloat)height
          duration:(NSTimeInterval)duration {
  if (self = [super initWithDuration:duration animationCurve:NSAnimationEaseIn]) {
    view_ = view;
    endHeight_ = height;
    startHeight_ = view.frame.size.height;
    [self setAnimationBlockingMode:NSAnimationNonblocking];
    [self setDelegate:view_];
  }
  return self;
}

// Overridden to call setHeight for each progress tick.
- (void)setCurrentProgress:(NSAnimationProgress)progress {
  [super setCurrentProgress:progress];
  [view_ setFrameSize:NSMakeSize(view_.frame.size.width, progress * (endHeight_ - startHeight_) + startHeight_)];
}


@end
