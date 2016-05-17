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
    /// Label for the type of challenge that will be displayed.
    IBOutlet UILabel *challenge;
    /// Button for selecting random Battle Maison Pokémon.
    IBOutlet UIButton *maison;
    /// Button for selecting random Battle Box Pokémon.
    IBOutlet UIButton *battleBox;
    /// The first Pokémon in the random selection.
    IBOutlet UIImageView *pokemon1;
    /// The second Pokémon in the random selection.
    IBOutlet UIImageView *pokemon2;
    /// The third Pokémon in the random selection.
    IBOutlet UIImageView *pokemon3;
    /// The fourth Pokémon in the random selection.
    IBOutlet UIImageView *pokemon4;
    /// The fifth Pokémon in the random selection.
    IBOutlet UIImageView *pokemon5;
    /// The sixth Pokémon in the random selection.
    IBOutlet UIImageView *pokemon6;
    
    /// A list of Maison-legal Pokémon.
    NSArray *pokemon;
    /// A list of Maison-illegal Pokémon.
    NSArray *ubers;
    /// The index of the challenge to display.
    NSInteger randomChallenge;
    /// The index of the first random Pokémon to display.
    NSInteger random1;
    /// The index of the second random Pokémon to display.
    NSInteger random2;
    /// The index of the third random Pokémon to display.
    NSInteger random3;
    /// The index of the fourth random Pokémon to display.
    NSInteger random4;
    /// The index of the fifth random Pokémon to display.
    NSInteger random5;
    /// The index of the sixth random Pokémon to display.
    NSInteger random6;
    /// The index of the random multi-battle partner to display.
    NSInteger randomPartner;
    /// The total number of Maison-legal Pokémon.
    NSInteger pokemonNumber;
    /// The total number of Maison-illegal Pokémon.
    NSInteger pokemonNumberBB;
    /// The total number of multi-battle partners.
    NSInteger partnerNumber;
}

/// Label for the type of challenge that will be displayed.
@property(nonatomic, retain)UILabel *challenge;
/// Button for selecting random Battle Maison Pokémon.
@property(nonatomic, retain)UIButton *maison;
/// Button for selecting random Battle Box Pokémon.
@property(nonatomic, retain)UIButton *battleBox;
/// The first Pokémon in the random selection.
@property(nonatomic, retain)UIImageView *pokemon1;
/// The second Pokémon in the random selection.
@property(nonatomic, retain)UIImageView *pokemon2;
/// The third Pokémon in the random selection.
@property(nonatomic, retain)UIImageView *pokemon3;
/// The fourth Pokémon in the random selection.
@property(nonatomic, retain)UIImageView *pokemon4;
/// The fifth Pokémon in the random selection.
@property(nonatomic, retain)UIImageView *pokemon5;
/// The sixth Pokémon in the random selection.
@property(nonatomic, retain)UIImageView *pokemon6;
/*!
 * Selects a random Battle Maison challenge.
 * @param sender The object that called this function.
 * @return
 */
-(IBAction)maison:(id)sender;
/*!
 * Selects a random Battle Box challenge.
 * @param sender The object that called this function.
 * @return
 */
-(IBAction)battleBox:(id)sender;

@end
