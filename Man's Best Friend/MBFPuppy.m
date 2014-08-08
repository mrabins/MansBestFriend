//
//  MBFPuppy.m
//  Man's Best Friend
//
//  Created by Mark Rabins on 5/13/14.
//  Copyright (c) 2014 Mark Rabins. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}


-(void)bark
{
    [super bark];
    NSLog(@"Whimper Whimper");
    [self givePuppyEyes];
}

@end
