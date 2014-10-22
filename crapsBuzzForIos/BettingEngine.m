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

+(int)dieTwoRandomNumberFactory {
    int dieTwoActual = arc4random_uniform(6) + 1;
    return dieTwoActual;
}

+(NSArray *)rollDiceActual {

    int diceAsInt = arc4random_uniform(6) + 1;
    NSInteger diceAsNSInteger = (NSInteger) diceAsInt;

    NSLog(@"%ld", diceAsNSInteger);

    NSObject *dieOneActual = @2;
    NSObject *dieTwoActual = @1;

    NSArray *diceHolder = [NSArray arrayWithObjects:dieOneActual, dieTwoActual, nil];
    return diceHolder;



}





















@end
