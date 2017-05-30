//
//  HeightAnimation.h
//  NSAnimation
//
//  Created by 赵睿 on 30/05/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HeightAnimation : NSAnimation {
@private
  NSView* view_;  // weak, owns us.
  CGFloat startHeight_;
  CGFloat endHeight_;
}

// Initialize a new height animation for the given view.  The animation will not
// start until startAnimation: is called.
- (id)initWithView:(NSView*)view
       finalHeight:(CGFloat)height
          duration:(NSTimeInterval)duration;

@end
