//
//  MRViewController.m
//  Man's Best Friend
//
//  Created by Mark Rabins on 3/6/14.
//  Copyright (c) 2014 Mark Rabins. All rights reserved.
//

#import "MRViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface MRViewController ()

@end

@implementation MRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image =[UIImage imageNamed:@"St.Bernard.JPG"];
        
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @" Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[ NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo 0";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myDogs addObject:littlePuppy];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender

{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0){
        randomIndex ++;
        
    }
    
    else if (self.currentIndex == randomIndex){
        randomIndex --;

}

    
self.currentIndex = randomIndex;

MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    

//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
[UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
    self.myImageView.image = randomDog.image;
    self.breedLabel.text = randomDog.breed;
    self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];

}
@end