//
//  BettingEngine.h
//  crapsBuzzForIos
//
//  Created by MIKE LAND on 10/21/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BettingEngine : NSObject

+(NSArray *)rollDiceActual;
+(void)evaluateTheField:(int)totalOfDice;

@end
