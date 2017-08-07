//
//  ViewController.m
//  BillSplitter
//
//  Created by Livleen Rai on 2017-08-05.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billValueTextField;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *billSplitLabel;

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
- (IBAction)calculateSplitAmount:(UIButton *)sender {
    
    NSDecimalNumber *billAmount = [NSDecimalNumber decimalNumberWithString:_billValueTextField.text];
    NSDecimalNumber *sliderValue = [[NSDecimalNumber alloc]initWithDouble:_numberOfPeopleSlider.value];
    
    NSDecimalNumber *billSplit = [billAmount decimalNumberByDividingBy:sliderValue];
    
    _billSplitLabel.text = [NSString stringWithFormat:@"You should each cough up $%0.2f", [billSplit floatValue]];
    
    
}


@end
