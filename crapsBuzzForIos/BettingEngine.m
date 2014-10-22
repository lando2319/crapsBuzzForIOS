//
//  BettingEngine.m
//  crapsBuzzForIos
//
//  Created by MIKE LAND on 10/21/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "BettingEngine.h"
#import "FieldBet.h"

@implementation BettingEngine

+(NSArray *)rollDiceActual {

    int dieAsIntOne = arc4random_uniform(6) + 1;
    int dieAsIntTwo = arc4random_uniform(6) + 1;
    NSInteger dieAsNSIntegerOne = (NSInteger) dieAsIntOne;
    NSInteger dieAsNSIntegerTwo = (NSInteger) dieAsIntTwo;

    NSArray *diceHolder = [NSArray arrayWithObjects:@(dieAsNSIntegerOne), @(dieAsNSIntegerTwo), nil];
    return diceHolder;
}

@end
