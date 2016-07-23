//
//  Random_TeamViewController.m
//  Random Team
//
//  Created by Cheng Hann Gan on 1/26/14.
//  Copyright (c) 2014 Cheng Hann Gan. All rights reserved.
//

#import "Random_TeamViewController.h"

@interface Random_TeamViewController ()

@end

@implementation Random_TeamViewController

@synthesize challenge, maison, battleBox, pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6;

- (void)viewDidLoad
{
    pokemon = @[@"Absol", @"Aegislash", @"Aerodactyl", @"Aggron", @"Alakazam", @"Archeops", @"Azumarill", @"Bisharp", @"Blaziken", @"Breloom", @"Chandelure", @"Charizard X", @"Charizard Y", @"Cinccino", @"Clawitzer", @"Clefable", @"Crawdaunt", @"Delphox", @"Dragonite", @"Drifblim", @"Excadrill", @"Exploud", @"Flygon", @"Gallade", @"Galvantula", @"Garchomp", @"Gengar", @"Greninja", @"Gyarados", @"Haxorus", @"Heracross", @"Houndoom", @"Krookodile", @"Lanturn", @"Lapras", @"Latias", @"Latios", @"Lucario", @"Magnezone", @"Manectric", @"Mienshao", @"Moltres", @"Nidoking", @"Nidoqueen", @"Noivern", @"Rampardos", @"Rapidash", @"Rhyperior", @"Roserade", @"Salamence", @"Samurott", @"Sceptile", @"Scolipede", @"Serperior", @"Sharpedo", @"Sigilyph", @"Starmie", @"Swampert", @"Swellow", @"Talonflame", @"Togekiss", @"Torterra", @"Typhlosion", @"Tyranitar", @"Tyrantrum", @"Vaporeon", @"Venusaur", @"Yanmega", @"Zapdos", @"Zoroark"];
    ubers = @[@"Celebi", @"Darkrai", @"Deoxys", @"Dialga", @"Diancie", @"Giratina", @"Ho-Oh", @"Keldeo", @"Manaphy", @"Mew", @"Meloetta", @"Mewtwo", @"Palkia", @"Rayquaza", @"Shaymin-Sky", @"Xerneas", @"Yveltal", @"Zygarde"];
    
    pokemonNumber = pokemon.count;
    pokemonNumberBB = ubers.count;
    partnerNumber = 4;
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)maison:(id)sender
{
    randomChallenge = arc4random() % 5;
    switch (randomChallenge) {
        case 0: challenge.text = @"Triple";
            break;
        case 1: challenge.text = @"Rotation";
            break;
        case 2: challenge.text = @"Double";
            break;
        case 3: challenge.text = @"Single";
            break;
        case 4: randomPartner = arc4random() % partnerNumber + 1;
            challenge.text = [@"Multi " stringByAppendingString:[NSString stringWithFormat:@"%ld", (long)randomPartner]];
            break;
        default: challenge.text = @"Single";
            break;
    }
    random1 = arc4random() % pokemonNumber;
    pokemon1.image = [UIImage imageNamed:[self randomPokemon:random1]];
    do
    {
        random2 = arc4random() % pokemonNumber;
    } while (random2 == random1);
    pokemon2.image = [UIImage imageNamed:[self randomPokemon:random2]];
    if (randomChallenge < 4)
    {
        do
        {
            random3 = arc4random() % pokemonNumber;
        } while (random3 == random1 || random3 == random2);
        pokemon3.image = [UIImage imageNamed:[self randomPokemon:random3]];
    }
    else
    {
        pokemon3.image = [UIImage imageNamed:@"blank.png"];
    }
    if (randomChallenge < 3)
    {
        do
        {
            random4 = arc4random() % pokemonNumber;
        } while (random4 == random1 || random4 == random2 || random4 == random3);
        pokemon4.image = [UIImage imageNamed:[self randomPokemon:random4]];
    }
    else
    {
        pokemon4.image = [UIImage imageNamed:@"blank.png"];
    }
    if (randomChallenge == 0)
    {
        do
        {
            random5 = arc4random() % pokemonNumber;
        } while (random5 == random1 || random5 == random2 || random5 == random3 || random5 == random4);
        pokemon5.image = [UIImage imageNamed:[self randomPokemon:random5]];
        do
        {
             random6 = arc4random() % pokemonNumber;
        } while (random6 == random1 || random6 == random2 || random6 == random3 || random6 == random4 || random6 == random5);
        pokemon6.image = [UIImage imageNamed:[self randomPokemon:random6]];
    }
    else
    {
        pokemon5.image = [UIImage imageNamed:@"blank.png"];
        pokemon6.image = [UIImage imageNamed:@"blank.png"];
    }
}

-(IBAction)battleBox:(id)sender
{
    /// The total number of Pokémon.
    NSInteger totalNumber = pokemonNumber + pokemonNumberBB;
    challenge.text = @"Battle Box";
    random1 = arc4random() % totalNumber - pokemonNumberBB;
    pokemon1.image = [UIImage imageNamed:[self randomPokemon:random1]];
    do
    {
        random2 = arc4random() % totalNumber - pokemonNumberBB;
    } while (random2 == random1);
    pokemon2.image = [UIImage imageNamed:[self randomPokemon:random2]];
    do
    {
        random3 = arc4random() % totalNumber - pokemonNumberBB;
    } while (random3 == random1 || random3 == random2);
    pokemon3.image = [UIImage imageNamed:[self randomPokemon:random3]];
    do
    {
        random4 = arc4random() % totalNumber - pokemonNumberBB;
    } while (random4 == random1 || random4 == random2 || random4 == random3);
    pokemon4.image = [UIImage imageNamed:[self randomPokemon:random4]];
    do
    {
        random5 = arc4random() % totalNumber - pokemonNumberBB;
    } while (random5 == random1 || random5 == random2 || random5 == random3 || random5 == random4);
    pokemon5.image = [UIImage imageNamed:[self randomPokemon:random5]];
    do {
        random6 = arc4random() % totalNumber - pokemonNumberBB;
    } while (random6 == random1 || random6 == random2 || random6 == random3 || random6 == random4 || random6 == random5);
    pokemon6.image = [UIImage imageNamed:[self randomPokemon:random6]];
}

/*!
 * Maps a random number to a Pokémon.
 * @param random The random number to map to a Pokémon.
 * @return The file path of the Pokémon image.
 */
-(NSString*)randomPokemon:(NSInteger)random
{
    /// The file name of the Pokémon image.
    NSString *randomP = @"blank";
    if (random >= 0)
    {
        randomP = [pokemon objectAtIndex:random];
    }
    else
    {
        randomP = [ubers objectAtIndex:-random];
    }
    randomP = [randomP stringByAppendingString:@".png"];
    return randomP;
}

@end
