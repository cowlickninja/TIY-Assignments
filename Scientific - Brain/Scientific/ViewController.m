//
//  ViewController.m
//  Scientific
//
//  Created by Nick Perkins on 4/18/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorBrain.h"
@interface ViewController () {
    CalculatorBrain *brain;
}

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

- (IBAction)operandTapped:(UIButton *)sender;
- (IBAction)additionTapped:(UIButton *)sender;
- (IBAction)subtractionTapped:(UIButton *)sender;
- (IBAction)multiplicationTapped:(UIButton *)sender;
- (IBAction)divisionTapped:(UIButton *)sender;
- (IBAction)equalTapped:(UIButton *)sender;
- (IBAction)allClearTapped:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // get a new brain and zero the label.
    brain = [[CalculatorBrain alloc]init];
    self.displayLabel.text = @"0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)operandTapped:(UIButton *)sender{
    
    // How to handle decimals
    if ([sender.titleLabel.text isEqualToString:@"."]){
        
        if([self.displayLabel.text isEqualToString:@"0"]){
        
        self.displayLabel.text = @"0.";
        }else{
            if(![self.displayLabel.text containsString:@"."]){
                self.displayLabel.text = [self.displayLabel.text stringByAppendingString:sender.titleLabel.text];
            }else{
                // do nothing
            }
        }
    }
    
    if ([self.displayLabel.text isEqualToString:@"0"] && ![sender.titleLabel.text isEqualToString:@"."])
    {
        self.displayLabel.text = sender.titleLabel.text;
    }
        
        if ([sender.titleLabel.text isEqualToString:@"."] && [self.displayLabel.text containsString:@"."]){
            // FIX Needed to add output if this if statement is true
            [self.displayLabel.text isEqualToString:@"0."];
        }else{
            //FIX for zero displaying after addition is selected
            if (![sender.titleLabel.text isEqualToString:@"0"]){
                self.displayLabel.text = sender.titleLabel.text;
            }else{
                self.displayLabel.text = [self.displayLabel.text stringByAppendingString:sender.titleLabel.text];
            }
        }
    }

- (IBAction)additionTapped:(UIButton *)sender
{
    brain.operatorType = OperatorTypeAddition;
    
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    //FIX for zero displaying after addition is selected.
    self.displayLabel.text = brain.operand1String;
}
- (IBAction)subtractionTapped:(UIButton *)sender{
    brain.operatorType = OperatorTypeSubtraction;
    
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = brain.operand1String;
}
- (IBAction)multiplicationTapped:(UIButton *)sender{
    brain.operatorType = OperatorTypeMultiplication;
    
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = brain.operand1String;
}
- (IBAction)divisionTapped:(UIButton *)sender{
    brain.operatorType = OperatorTypeDivision;
    
    brain.operand1String = [self.displayLabel.text mutableCopy];
    brain.operand1 = [brain.operand1String floatValue];
    self.displayLabel.text = brain.operand1String;
}
- (IBAction)equalTapped:(UIButton *)sender{
    brain.operand2String = [self.displayLabel.text mutableCopy];
    brain.operand2 = [brain.operand2String floatValue];
    //run operation
    //set the label to be the result
    self.displayLabel.text = [brain executeOperationOnOperands];
    
    // get a new brain
    brain = [[CalculatorBrain alloc]init];
}
- (IBAction)allClearTapped:(UIButton *)sender{
    //reset the brain!
    self.displayLabel.text = @"0";
}

@end
