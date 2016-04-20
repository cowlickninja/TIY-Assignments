//
//  CalculatorBrain.m
//  Scientific
//
//  Created by Nick Perkins on 4/19/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _operand1String = [[NSMutableString alloc]init];
        _operand2String = [[NSMutableString alloc]init];
        _operand1 = 0.0f;
        _operand2 = 0.0f;
        _operatorType = OperatorTypeNone;
        _userIsTypingANumber = NO;
    }
    return self;
}

-(NSString*)executeOperationOnOperands{
    if ((![self.operand1String isEqualToString:@""]) && (![self.operand2String isEqualToString:@""]) && (self.operatorType != OperatorTypeNone)) {

        float result;
        switch(_operatorType) {
            case OperatorTypeAddition:
                result = self.operand1 + self.operand2;
                break;
                
            case OperatorTypeDivision:
                result = self.operand1/self.operand2;
                break;
                
            case OperatorTypeSubtraction:
                result = self.operand1 - self.operand2;
                break;
                
            case OperatorTypeMultiplication:
                result = self.operand1 * self.operand2;
                break;
                
            default:
                NSLog(@"Burn The Witch!");
                return @"HACKER!";
                break;
        }
        // FIX Add .0 to the float result to remove the trailing zeros.
        return [NSString stringWithFormat:@"%.0f", result];
    }
    return @"Invalid";
}

@end
