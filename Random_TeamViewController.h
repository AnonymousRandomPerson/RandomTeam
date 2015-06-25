//
//  Random_TeamViewController.h
//  Random Team
//
//  Created by Cheng Hann Gan on 1/26/14.
//  Copyright (c) 2014 Cheng Hann Gan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Random_TeamViewController : UIViewController
{
    IBOutlet UILabel *challenge;
    IBOutlet UIButton *maison;
    IBOutlet UIButton *battleBox;
    IBOutlet UIImageView *pokemon1;
    IBOutlet UIImageView *pokemon2;
    IBOutlet UIImageView *pokemon3;
    IBOutlet UIImageView *pokemon4;
    IBOutlet UIImageView *pokemon5;
    IBOutlet UIImageView *pokemon6;
    
    NSArray *pokemon;
    NSArray *ubers;
    NSInteger randomChallenge;
    NSInteger random1;
    NSInteger random2;
    NSInteger random3;
    NSInteger random4;
    NSInteger random5;
    NSInteger random6;
    NSInteger randomPartner;
    NSInteger pokemonNumber;
    NSInteger pokemonNumberBB;
    NSInteger partnerNumber;
}

@property(nonatomic, retain)UILabel *challenge;
@property(nonatomic, retain)UIButton *maison;
@property(nonatomic, retain)UIButton *battleBox;
@property(nonatomic, retain)UIImageView *pokemon1;
@property(nonatomic, retain)UIImageView *pokemon2;
@property(nonatomic, retain)UIImageView *pokemon3;
@property(nonatomic, retain)UIImageView *pokemon4;
@property(nonatomic, retain)UIImageView *pokemon5;
@property(nonatomic, retain)UIImageView *pokemon6;
-(IBAction)maison:(id)sender;
-(IBAction)battleBox:(id)sender;

@end
