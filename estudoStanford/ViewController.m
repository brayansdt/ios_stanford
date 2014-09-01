//
//  ViewController.m
//  estudoStanford
//
//  Created by Brayan Dichtl on 8/29/14.
//  Copyright (c) 2014 Instituto Eldorado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *headLine;
@property (weak, nonatomic) IBOutlet UITextView *bodyText;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeBackgroundColor:(UIButton *)sender
{
    [self.bodyText.textStorage addAttribute:NSForegroundColorAttributeName
                                      value:sender.backgroundColor
                                      range:self.bodyText.selectedRange];
}

- (IBAction)outlineTextSelection
{
    [self.bodyText.textStorage addAttributes:@{NSStrokeWidthAttributeName: @-3,
                                               NSStrokeColorAttributeName: [UIColor blackColor]}
                                       range:self.bodyText.selectedRange];
}

- (IBAction)unoutlineTextSelection
{
    [self.bodyText.textStorage removeAttribute:NSStrokeWidthAttributeName
                                         range:self.bodyText.selectedRange];
}
@end
