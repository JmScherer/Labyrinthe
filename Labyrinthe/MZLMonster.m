//
//  MZLMonster.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLMonster.h"

@implementation MZLMonster

-(id)initMonsterWithCopy:(MZLMonster *)copy; {
    
    MZLMonster *monsterCopy = [[MZLMonster alloc] init];
    
    monsterCopy.monsterDamage = copy.monsterDamage;
    monsterCopy.monsterDefense = copy.monsterDefense;
    monsterCopy.monsterFloor = copy.monsterFloor;
    monsterCopy.monsterGold = copy.monsterGold;
    monsterCopy.monsterHealth = copy.monsterHealth;
    monsterCopy.monsterImage = copy.monsterImage;
    monsterCopy.monsterName = copy.monsterName;
    
    return monsterCopy;
}

@end
