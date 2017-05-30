//
//  ViewController.h
//  NSAnimation
//
//  Created by 赵睿 on 30/05/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Animation.h"
#import "HeightAnimation.h"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSBox* demoBox;
@property (strong,nonatomic) Animation* animation;

@end

