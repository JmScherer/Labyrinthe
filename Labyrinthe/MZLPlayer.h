//
//  MZLPlayerFactory.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MZLWeapon.h"
#import "MZLArmor.h"
#import "MZLAccessory.h"


@interface MZLPlayer : NSObject

@property (nonatomic) int playerHealthCurrent;
@property (nonatomic) int playerHealthMaximum;
@property (nonatomic) int playerGold;

@property (nonatomic, strong) MZLWeapon *playerWeapon;
@property (nonatomic, strong) MZLArmor *playerArmor;
@property (nonatomic, strong) MZLAccessory *playerAccessory;

-(instancetype)initPlayerNewGame;

@end
