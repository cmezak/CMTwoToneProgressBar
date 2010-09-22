//
//  CMTwoToneProgressBar.h
//  TwoToneProgressBar
//
//  Created by Charlie Mezak on 9/22/10.
//  Copyright 2010 Natural Guides, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CMTwoToneProgressBar : UIView {
	UIView *bar;
	float progress;
	UIView *innerBorderView;
}
- (void)setProgress:(float)newProgress animated:(BOOL)animated;
- (void)setProgressBarColor:(UIColor *)color;
- (void)setProgressBackgroundColor:(UIColor *)color;
- (void)setOuterBorderColor:(UIColor *)color;
- (void)setInnerBorderColor:(UIColor *)color;
@end
