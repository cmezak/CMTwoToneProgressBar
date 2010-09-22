//
//  CMTwoToneProgressBar.m
//  TwoToneProgressBar
//
//  Created by Charlie Mezak on 9/22/10.
//  Copyright 2010 Natural Guides, LLC. All rights reserved.
//

#import "CMTwoToneProgressBar.h"
#import <QuartzCore/QuartzCore.h>

@implementation CMTwoToneProgressBar

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {

		progress = 0.0;
		
		self.layer.cornerRadius = frame.size.height/2.0;
		self.layer.borderWidth = 1.0;
		self.layer.borderColor = [UIColor blackColor].CGColor;
		self.backgroundColor = [UIColor whiteColor];
		self.clipsToBounds = YES;
		self.layer.masksToBounds = YES;		
		self.backgroundColor = [UIColor lightGrayColor];

		
		UIView *innerBorderView = [[UIView alloc] initWithFrame:CGRectMake(1, 1, self.frame.size.width-2, self.frame.size.height-2)];
		innerBorderView.layer.borderWidth = 1.0;
		innerBorderView.layer.borderColor = [UIColor whiteColor].CGColor;
		innerBorderView.layer.cornerRadius = self.layer.cornerRadius;
		
		bar = [[UIView alloc] initWithFrame:CGRectMake(1,1, progress*self.frame.size.width,self.frame.size.height-2)];
		bar.backgroundColor = [UIColor blackColor];
		bar.layer.borderWidth = 1.0;
		[self addSubview:bar];
		
		[self addSubview:innerBorderView];

	
	}
    return self;
}

- (void)setProgress:(float)newProgress animated:(BOOL)animated {

	progress = newProgress;
		
	if (animated) {
		[UIView beginAnimations:nil context:nil];
		[UIView setAnimationDuration:MAX(0.3,abs(progress-newProgress))];
	}
	
	bar.frame = CGRectMake(1,1,progress*self.frame.size.width,self.frame.size.height-2);
	
	if (animated) {
		[UIView commitAnimations];
	}
	
}

- (void)setProgressBarColor:(UIColor *)color {
	bar.backgroundColor = color;
}

- (void)setProgressBackgroundColor:(UIColor *)color {
	self.backgroundColor = color;	
}

- (void)setOuterBorderColor:(UIColor *)color {
	self.layer.borderColor = color.CGColor;	
}

- (void)setInnerBorderColor:(UIColor *)color {
	innerBorderView.layer.borderColor = color.CGColor;	
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc {
	[innerBorderView release];
	[bar release];
    [super dealloc];
}


@end
