//
//  TextStatusViewController.m
//  Attributor
//
//  Created by Armour on 4/20/15.
//  Copyright (c) 2015 ZJU. All rights reserved.
//

#import "TextStatusViewController.h"

@interface TextStatusViewController ()
@property (weak, nonatomic) IBOutlet UILabel *coloredCharLabel;
@property (weak, nonatomic) IBOutlet UILabel *outlineCharLabel;
@end

@implementation TextStatusViewController

- (void)setTextToAnalyze:(NSAttributedString *)textToAnalyze {
    _textToAnalyze = textToAnalyze;
    if (self.view.window) [self updateUI];
}

/*- (void) viewDidLoad {
    [super viewDidLoad];
    self.textToAnalyze = [[NSAttributedString alloc] initWithString:@"test" attributes:@{NSForegroundColorAttributeName:[UIColor greenColor], NSStrokeWidthAttributeName:@-3}];
}*/


- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateUI];
}

- (void)updateUI {
    self.coloredCharLabel.text = [NSString stringWithFormat:@"%d colored characters", [[self charactersWithAttribute:NSForegroundColorAttributeName] length]];
    self.outlineCharLabel.text = [NSString stringWithFormat:@"%d outlined characters", [[self charactersWithAttribute:NSStrokeWidthAttributeName] length]];
}

- (NSAttributedString *) charactersWithAttribute:(NSString *)attributeName {
    NSMutableAttributedString * character = [[NSMutableAttributedString alloc] init];

    int index = 0;
    while (index < [self.textToAnalyze length]) {
        NSRange range;
        id value = [self.textToAnalyze attribute:attributeName atIndex:index effectiveRange:&range];
        if (value) {
            [character appendAttributedString:[self.textToAnalyze attributedSubstringFromRange:range]];
            index = (int)range.location + (int)range.length;
        } else {
            index++;
        }
    }

    return character;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
