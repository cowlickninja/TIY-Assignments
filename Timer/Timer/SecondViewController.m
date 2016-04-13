//
//  SecondViewController.m
//  Timer
//
//  Created by Nick Perkins on 4/13/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController (){
    NSTimer * timer;
    NSInteger currentValue;
}
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

-(IBAction)startTapped:(id)sender;
-(IBAction)resetTapped:(id)sender;
-(IBAction)stopTapped:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    currentValue = 60;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Button Actions

-(IBAction)startTapped:(id)sender{
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(processStep)
                                           userInfo:nil
                                            repeats:YES];
}
-(IBAction)resetTapped:(id)sender{
    
}
-(IBAction)stopTapped:(id)sender{
    
}

-(void)processStep{
    if (currentValue > 0) {
        currentValue -= 1;
        [self updateLabel];
    }
}

-(void)updateLabel {
    self.timerLabel.text = [NSString stringWithFormat:@"%ld Seconds" , currentValue];
}

@end
