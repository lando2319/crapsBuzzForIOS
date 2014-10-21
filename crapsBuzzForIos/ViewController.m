//
//  ViewController.m
//  crapsBuzzForIos
//
//  Created by MIKE LAND on 10/21/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSInteger *dieOne;
@property NSInteger *dieTwo;
@property (weak, nonatomic) IBOutlet UILabel *dieOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *dieTwoLabel;
@property (weak, nonatomic) IBOutlet UILabel *dieCall;

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
    int dieTwoActualVar = [self dieTwoRandomNumberFactory];
    int diceTotal = dieOneActualVar + dieTwoActualVar;


    self.dieOneLabel.text = [NSString stringWithFormat:@"%i", dieOneActualVar];
    self.dieTwoLabel.text = [NSString stringWithFormat:@"%i", dieTwoActualVar];
    self.dieCall.text = [NSString stringWithFormat:@"%i", diceTotal];
}

- (int)dieOneRandomNumberFactory {
    int dieOneActual = arc4random_uniform(6) + 1;
    return dieOneActual;
}

- (int)dieTwoRandomNumberFactory {
    int dieTwoActual = arc4random_uniform(6) + 1;
    return dieTwoActual;
}





@end
