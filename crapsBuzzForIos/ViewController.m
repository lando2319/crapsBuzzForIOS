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
    self.dieOneLabel.text = @"One";
    self.dieTwoLabel.text = @"Two";
    NSLog(@"Dice are rolling");
    self.dieTwoLabel.text = [NSString stringWithFormat:@"%i", [self randomNumberFactory]];
}

- (int)randomNumberFactory {
    int dieOneActual = arc4random_uniform(6) + 1;
    return dieOneActual;
}


@end
