//
//  TwoToneProgressBarAppDelegate.h
//  TwoToneProgressBar
//
//  Created by Charlie Mezak on 9/22/10.
//  Copyright 2010 Natural Guides, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMTwoToneProgressBar.h"

@interface TwoToneProgressBarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	CMTwoToneProgressBar *progBar;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
-(float)randomFloatBetween:(float)num1 andLargerFloat:(float)num2;
@end

