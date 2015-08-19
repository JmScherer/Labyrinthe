//
//  MZLMonster.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MZLMonster : NSObject

@property (nonatomic, copy) NSString *monsterName;
@property (nonatomic) int monsterHealth;
@property (nonatomic) int monsterDamage;
@property (nonatomic) int monsterDefense;
@property (nonatomic) int monsterGold;

@property (nonatomic) int monsterFloor;

@property (nonatomic) UIImage *monsterImage;

-(id)initMonsterWithCopy:(MZLMonster *)copy;

@end
