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

@synthesize challenge, maison, battleBox, pokémon1, pokémon2, pokémon3, pokémon4, pokémon5, pokémon6;

- (void)viewDidLoad
{
    pokemon = [NSArray arrayWithObjects:@"Absol", @"Aegislash", @"Aerodactyl", @"Aggron", @"Alakazam", @"Archeops", @"Azumarill", @"Bisharp", @"Blaziken", @"Breloom", @"Chandelure", @"Charizard X", @"Charizard Y", @"Cinccino", @"Clawitzer", @"Clefable", @"Crawdaunt", @"Delphox", @"Dragonite", @"Drifblim", @"Excadrill", @"Exploud", @"Flygon", @"Gallade", @"Galvantula", @"Garchomp", @"Gengar", @"Greninja", @"Gyarados", @"Haxorus", @"Heracross", @"Houndoom", @"Krookodile", @"Lanturn", @"Lapras", @"Latias", @"Latios", @"Lucario", @"Magnezone", @"Manectric", @"Mienshao", @"Moltres", @"Nidoking", @"Nidoqueen", @"Noivern", @"Rampardos", @"Rapidash", @"Rhyperior", @"Roserade", @"Salamence", @"Samurott", @"Sceptile", @"Scolipede", @"Serperior", @"Sharpedo", @"Sigilyph", @"Starmie", @"Swampert", @"Swellow", @"Talonflame", @"Togekiss", @"Torterra", @"Typhlosion", @"Tyranitar", @"Tyrantrum", @"Vaporeon", @"Venusaur", @"Yanmega", @"Zapdos", @"Zoroark", nil];
    ubers = [NSArray arrayWithObjects:@"Celebi", @"Deoxys", @"Dialga", @"Diancie", @"Giratina", @"Ho-Oh", @"Keldeo", @"Meloetta", @"Mewtwo", @"Palkia", @"Rayquaza", nil];
    
    pokémonNumber = pokemon.count;
    pokémonNumberBB = ubers.count;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)maison:(id)sender
{
    randomChallenge = arc4random()%5;
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
    random1 = arc4random()%pokémonNumber;
    pokémon1.image = [UIImage imageNamed:[self randomPokémon:random1]];
    random2 = arc4random()%pokémonNumber;
    while (random2 == random1)
        random2 = arc4random()%pokémonNumber;
    pokémon2.image = [UIImage imageNamed:[self randomPokémon:random2]];
    if (randomChallenge < 4)
    {
        random3 = arc4random()%pokémonNumber;
        while (random3 == random1 || random3 == random2)
            random3 = arc4random()%pokémonNumber;
            pokémon3.image = [UIImage imageNamed:[self randomPokémon:random3]];
    }
    else
        pokémon3.image = [UIImage imageNamed:@"blank.png"];
    if (randomChallenge < 3)
    {
        random4 = arc4random()%pokémonNumber;
        while (random4 == random1 || random4 == random2 || random4 == random3)
            random4 = arc4random()%pokémonNumber;
        pokémon4.image = [UIImage imageNamed:[self randomPokémon:random4]];
    }
    else
        pokémon4.image = [UIImage imageNamed:@"blank.png"];
    if (randomChallenge == 0)
    {
        random5 = arc4random()%pokémonNumber;
        while (random5 == random1 || random5 == random2 || random5 == random3 || random5 == random4)
            random5 = arc4random()%pokémonNumber;
        pokémon5.image = [UIImage imageNamed:[self randomPokémon:random5]];
        random6 = arc4random()%pokémonNumber;
        while (random6 == random1 || random6 == random2 || random6 == random3 || random6 == random4 || random6 == random5)
            random6 = arc4random()%pokémonNumber;
        pokémon6.image = [UIImage imageNamed:[self randomPokémon:random6]];
    }
    else
    {
        pokémon5.image = [UIImage imageNamed:@"blank.png"];
        pokémon6.image = [UIImage imageNamed:@"blank.png"];
    }
}

-(IBAction)battleBox:(id)sender
{
    NSInteger totalNumber = pokémonNumber + pokémonNumberBB;
    challenge.text = @"Battle Box";
    random1 = arc4random()%totalNumber-pokémonNumberBB;
    pokémon1.image = [UIImage imageNamed:[self randomPokémon:random1]];
    random2 = arc4random()%totalNumber-pokémonNumberBB;
    while (random2 == random1)
        random2 = arc4random()%totalNumber-pokémonNumberBB;
    pokémon2.image = [UIImage imageNamed:[self randomPokémon:random2]];
    random3 = arc4random()%totalNumber-pokémonNumberBB;
    while (random3 == random1 || random3 == random2)
        random3 = arc4random()%totalNumber-pokémonNumberBB;
    pokémon3.image = [UIImage imageNamed:[self randomPokémon:random3]];
    random4 = arc4random()%totalNumber-pokémonNumberBB;
    while (random4 == random1 || random4 == random2 || random4 == random3)
        random4 = arc4random()%totalNumber-pokémonNumberBB;
    pokémon4.image = [UIImage imageNamed:[self randomPokémon:random4]];
    random5 = arc4random()%totalNumber-pokémonNumberBB;
    while (random5 == random1 || random5 == random2 || random5 == random3 || random5 == random4)
        random5 = arc4random()%totalNumber-pokémonNumberBB;
    pokémon5.image = [UIImage imageNamed:[self randomPokémon:random5]];
    random6 = arc4random()%totalNumber-pokémonNumberBB;
    while (random6 == random1 || random6 == random2 || random6 == random3 || random6 == random4 || random6 == random5)
        random6 = arc4random()%totalNumber-pokémonNumberBB;
    pokémon6.image = [UIImage imageNamed:[self randomPokémon:random6]];
}

-(NSString*)randomPokémon:(NSInteger)random
{
    NSString *randomP = @"blank";
    if (randomP >= 0)
    {
        randomP = [pokemon objectAtIndex:random];
    }
    else
    {
        randomP = [ubers objectAtIndex:random * -1];
    }
    randomP = [randomP stringByAppendingString:@".png"];
    return randomP;
}

@end
