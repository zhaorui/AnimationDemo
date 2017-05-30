//
//  Animation.m
//  NSAnimation
//
//  Created by 赵睿 on 30/05/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "Animation.h"

@implementation Animation

-(NSAnimationProgress)currentProgress {
  NSLog(@"current progress: %f", [super currentProgress]);
  return [super currentProgress];
}

-(void)setCurrentProgress:(NSAnimationProgress)currentProgress {
  NSLog(@"current progress: %f", [super currentProgress]);
  [super setCurrentProgress:currentProgress];
}

-(float)currentValue {
  return [super currentValue];
}


@end
