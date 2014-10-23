//
//  BettingEngine.m
//  crapsBuzzForIos
//
//  Created by MIKE LAND on 10/21/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "BettingEngine.h"
#import "FieldBet.h"

//@interface BettingEngine ()
//
//@end

@implementation BettingEngine

+(NSArray *)rollDiceActual {
    int dieAsIntOne = arc4random_uniform(6) + 1;
    int dieAsIntTwo = arc4random_uniform(6) + 1;
    int totalOfDiceAsInt = dieAsIntTwo + dieAsIntOne;

    NSInteger totalOfDiceAsNSInteger = (NSInteger) totalOfDiceAsInt;
    NSInteger dieAsNSIntegerOne = (NSInteger) dieAsIntOne;
    NSInteger dieAsNSIntegerTwo = (NSInteger) dieAsIntTwo;

    NSArray *diceHolder = [NSArray arrayWithObjects:@(dieAsNSIntegerOne), @(dieAsNSIntegerTwo), @(totalOfDiceAsNSInteger), nil];
    [self evaluateTheField:(totalOfDiceAsInt)];
    return diceHolder;
}

+(void)evaluateTheField:(int)totalOfDice{
    NSArray *fieldWinners = [FieldBet fieldWinners];
    for (NSObject *currentFieldNumber in fieldWinners) {
        if ([NSNumber numberWithInt:totalOfDice] == currentFieldNumber) {
            NSLog(@"winner");
        }
    }
}


@end
