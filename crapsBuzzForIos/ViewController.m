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
@property NSInteger *dieOne;
@property NSInteger *dieTwo;
@property (weak, nonatomic) IBOutlet UILabel *dieOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *dieTwoLabel;
@property (weak, nonatomic) IBOutlet UILabel *dieCall;

@property NSArray *diceRoll;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)rollDice:(id)sender {
    NSArray *diceRoll = [BettingEngine rollDiceActual];

    self.dieTwoLabel.text = [NSString stringWithFormat:@"%@", diceRoll[1]];
    self.dieOneLabel.text = [NSString stringWithFormat:@"%@", diceRoll[0]];

    self.dieCall.text = [NSString stringWithFormat:@"%@", diceRoll[2]];

//    NSLog(@"%@", diceRoll);
}



@end
