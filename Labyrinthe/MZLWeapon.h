//
//  MZLWeapon.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZLWeapon : NSObject

@property (weak, nonatomic) NSString *weaponName;
@property (nonatomic) int weaponDamage;
@property (nonatomic) int weaponCost;

-(instancetype)initWeaponNewGame;

@end
