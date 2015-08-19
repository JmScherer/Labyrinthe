//
//  MZLDungeonFactory.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MZLPlayer.h"
#import "MZLMonster.h"
#import "MZLMerchant.h"

@interface MZLDungeonFactory : NSObject

@property (nonatomic, strong) NSMutableArray *monsterBlock;

-(MZLPlayer *) player;

-(NSMutableArray *)monsterBlockNewGame;
-(NSMutableArray *)monsterBlock:(int)block;

@end
