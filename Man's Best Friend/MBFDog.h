//
//  MBFDog.h
//  Man's Best Friend
//
//  Created by Mark Rabins on 3/6/14.
//  Copyright (c) 2014 Mark Rabins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

// My MBFDog class has four properties
@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;


//method
-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int) ageInDogYears:(int)regularAge;






@end
