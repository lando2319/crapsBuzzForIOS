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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
- (IBAction)rollDice:(id)sender {
    int dieOneActualVar = [self dieOneRandomNumberFactory];
    int dieTwoActualVar = [BettingEngine dieTwoRandomNumberFactory];

    self.dieOneLabel.text = [NSString stringWithFormat:@"%i", dieOneActualVar];
    self.dieTwoLabel.text = [NSString stringWithFormat:@"%i", dieTwoActualVar];

    NSArray *diceRoll = [BettingEngine rollDiceActual];

}

- (int)dieOneRandomNumberFactory {
    int dieOneActual = arc4random_uniform(6) + 1;
    return dieOneActual;
}






@end
