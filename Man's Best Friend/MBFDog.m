//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Mark Rabins on 3/6/14.
//  Copyright (c) 2014 Mark Rabins. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog


-(void)bark
{
    NSLog(@"Woof Woof!");

}

-(void)barkANumberOfTimes: (int)numberOfTimes;
{
    for (int bark =1; bark <= numberOfTimes; bark ++){
        [self bark];
    }
}
-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud){
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"yip, yip");
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"Ruff, Ruff!");
    }
  }
}
-(int) ageInDogYears:(int)regularAge
{
    int newAge = regularAge *7;
    return newAge;
}

    @end