//
//  ViewController.m
//  TipCalculator
//
//  Created by Tyler Yan on 2015-07-10.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(id)sender {
    
    NSString *input = self.billAmountTextField.text;
    
    NSString *percentageInput = self.tipPercentageTextField.text;
    
    float percentageTip = [percentageInput floatValue] / 100;
    
    float inputInt = [input floatValue];
    
    float tipAmount = inputInt * percentageTip;
    
    
    
    self.tipAmountLabel.text =  [NSString stringWithFormat:@"$%0.2f",tipAmount];
}

@end
