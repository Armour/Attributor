//
//  ViewController.m
//  Attributor
//
//  Created by Armour on 3/13/15.
//  Copyright (c) 2015 ZJU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;

@end


@implementation ViewController

- (IBAction)changeBodySelectionColorToMatchBackgroundOfBotton:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection {
    [self.body.textStorage addAttributes:@{NSStrokeWidthAttributeName: @-3,
                                           NSStrokeColorAttributeName: [UIColor blackColor]}
                                   range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection {
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName range:self.body.selectedRange];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

@end
