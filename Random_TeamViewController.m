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

NSInteger randomChallenge;
NSInteger random1;
NSInteger random2;
NSInteger random3;
NSInteger random4;
NSInteger random5;
NSInteger random6;
NSInteger randomPartner;
const NSInteger pokémonNumber = 54;
const NSInteger pokémonNumberBB = 8;
const NSInteger partnerNumber = 22;

@implementation Random_TeamViewController

@synthesize challenge, maison, battleBox, pokémon1, pokémon2, pokémon3, pokémon4, pokémon5, pokémon6;

- (void)viewDidLoad
{
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

-(NSString*)randomPokémon:(int)random
{
    NSString *randomP = @"blank";
    switch (random) {
        case 0: randomP = @"Delphox";
            break;
        case 1: randomP = @"Roserade";
            break;
        case 2: randomP = @"Mienshao";
            break;
        case 3: randomP = @"Aerodactyl";
            break;
        case 4: randomP = @"Tyrantrum";
            break;
        case 5: randomP = @"Sharpedo";
            break;
        case 6: randomP = @"Lapras";
            break;
        case 7: randomP = @"Swellow";
            break;
        case 8: randomP = @"Scolipede";
            break;
        case 9: randomP = @"Blaziken";
            break;
        case 10: randomP = @"Talonflame";
            break;
        case 11: randomP = @"Greninja";
            break;
        case 12: randomP = @"Noivern";
            break;
        case 13: randomP = @"Houndoom";
            break;
        case 14: randomP = @"Heracross";
            break;
        case 15: randomP = @"Aggron";
            break;
        case 16: randomP = @"Torterra";
            break;
        case 17: randomP = @"Azumarill";
            break;
        case 18: randomP = @"Rampardos";
            break;
        case 19: randomP = @"Drifblim";
            break;
        case 20: randomP = @"Rapidash";
            break;
        case 21: randomP = @"Lucario";
            break;
        case 22: randomP = @"Togekiss";
            break;
        case 23: randomP = @"Gengar";
            break;
        case 24: randomP = @"Vaporeon";
            break;
        case 25: randomP = @"Gallade";
            break;
        case 26: randomP = @"Rhyperior";
            break;
        case 27: randomP = @"Nidoking";
            break;
        case 28: randomP = @"Typhlosion";
            break;
        case 29: randomP = @"Dragonite";
            break;
        case 30: randomP = @"Tyranitar";
            break;
        case 31: randomP = @"Lanturn";
            break;
        case 32: randomP = @"Sceptile";
            break;
        case 33: randomP = @"Venusaur";
            break;
        case 34: randomP = @"Salamence";
            break;
        case 35: randomP = @"Moltres";
            break;
        case 36: randomP = @"Zapdos";
            break;
        case 37: randomP = @"Serperior";
            break;
        case 38: randomP = @"Haxorus";
            break;
        case 39: randomP = @"Excadrill";
            break;
        case 40: randomP = @"Chandelure";
            break;
        case 41: randomP = @"Archeops";
            break;
        case 42: randomP = @"Samurott";
            break;
        case 43: randomP = @"Sigilyph";
            break;
        case 44: randomP = @"Krookodile";
            break;
        case 45: randomP = @"Starmie";
            break;
        case 46: randomP = @"Zoroark";
            break;
        case 47: randomP = @"Galvantula";
            break;
        case 48: randomP = @"Clefable";
            break;
        case 49: randomP = @"Charizard";
            break;
        case 50: randomP = @"Breloom";
            break;
        case 51: randomP = @"Garchomp";
            break;
        case 52: randomP = @"Manectric";
            break;
        case 53: randomP = @"Aegislash";
            break;
        case -1: randomP = @"Keldeo";
            break;
        case -2: randomP = @"Meloetta";
            break;
        case -3: randomP = @"Palkia";
            break;
        case -4: randomP = @"Dialga";
            break;
        case -5: randomP = @"Giratina";
            break;
        case -6: randomP = @"Deoxys";
            break;
        case -7: randomP = @"Celebi";
            break;
        case -8: randomP = @"Mewtwo";
            break;
        default: randomP = @"blank";
    }
    randomP = [randomP stringByAppendingString:@".png"];
    return randomP;
}

@end
