//
//  MZLWeapon.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLWeapon.h"

@implementation MZLWeapon

-(instancetype)initWeaponNewGame {
    
    self = [super init];
    
    if(self) {
        
        _weaponName = @"Fists";
        _weaponDamage = 1000;
        _weaponCost = 0;
        
    }
    
    return self;
    
}

@end
