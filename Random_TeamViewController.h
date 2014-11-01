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
    IBOutlet UIImageView *pokémon1;
    IBOutlet UIImageView *pokémon2;
    IBOutlet UIImageView *pokémon3;
    IBOutlet UIImageView *pokémon4;
    IBOutlet UIImageView *pokémon5;
    IBOutlet UIImageView *pokémon6;
}

@property(nonatomic, retain)UILabel *challenge;
@property(nonatomic, retain)UIButton *maison;
@property(nonatomic, retain)UIButton *battleBox;
@property(nonatomic, retain)UIImageView *pokémon1;
@property(nonatomic, retain)UIImageView *pokémon2;
@property(nonatomic, retain)UIImageView *pokémon3;
@property(nonatomic, retain)UIImageView *pokémon4;
@property(nonatomic, retain)UIImageView *pokémon5;
@property(nonatomic, retain)UIImageView *pokémon6;
-(IBAction)maison:(id)sender;
-(IBAction)battleBox:(id)sender;

@end
