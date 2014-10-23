//
//  ViewController.m
//  crapsBuzzForIos
//
//  Created by MIKE LAND on 10/21/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "ViewController.h"
#import "BettingEngine.h"

@interface ViewController ()
@property NSInteger dieOne;
@property NSInteger dieTwo;
@property (weak, nonatomic) IBOutlet UILabel *dieOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *dieTwoLabel;
@property (weak, nonatomic) IBOutlet UILabel *dieCall;
@property (weak, nonatomic) IBOutlet UIButton *fieldBetButton;
@property (weak, nonatomic) IBOutlet UILabel *fieldBetAmount;
@property NSInteger fieldBetAmountActual;

@property NSArray *diceRoll;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fieldBetAmountActual = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)rollDice:(id)sender {
    NSArray *diceRoll = [BettingEngine rollDiceActual];
    self.dieTwoLabel.text = [NSString stringWithFormat:@"%@", diceRoll[1]];
    self.dieOneLabel.text = [NSString stringWithFormat:@"%@", diceRoll[0]];
    self.dieCall.text = [NSString stringWithFormat:@"%@", diceRoll[2]];

    NSNumber* tmpNumber = diceRoll[2];

    //Evaluate Bets

    [BettingEngine evaluateTheField:[tmpNumber integerValue]];

}
- (IBAction)fieldButtonPressed:(id)sender {

    self.fieldBetAmount.text = [NSString stringWithFormat:@"%li", (long)self.fieldBetAmountActual];



//    self.fieldBetAmount = self.fieldBetAmount + 1;
}



@end
