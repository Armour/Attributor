//
//  DrawViewController.m
//  Attributor
//
//  Created by Armour on 4/21/15.
//  Copyright (c) 2015 ZJU. All rights reserved.
//

#import "DrawViewController.h"
#import "PlayingCardView.h"

@interface DrawViewController ()

@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;

@end

@implementation DrawViewController

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    self.playingCardView.faceup = !self.playingCardView.faceup;
}

- (IBAction)swipe_double:(UISwipeGestureRecognizer *)sender {
    self.playingCardView.faceup = !self.playingCardView.faceup;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playingCardView.rank = 13;
    self.playingCardView.suit = @"♥️";
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(pinch:)]];
}

@end
