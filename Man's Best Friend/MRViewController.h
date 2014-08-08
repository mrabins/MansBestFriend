//
//  MRViewController.h
//  Man's Best Friend
//
//  Created by Mark Rabins on 3/6/14.
//  Copyright (c) 2014 Mark Rabins. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MRViewController : UIViewController

-(void)printHelloWorld;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;


@end