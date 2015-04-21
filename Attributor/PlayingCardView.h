//
//  PlayingCardView.h
//  Attributor
//
//  Created by Armour on 4/21/15.
//  Copyright (c) 2015 ZJU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceup;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@end
