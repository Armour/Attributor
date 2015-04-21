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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playingCardView.rank = 13;
    self.playingCardView.suit = @"♥️";
}

@end
