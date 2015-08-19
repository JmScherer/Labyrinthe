//
//  MZLArmor.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MZLArmor : NSObject

@property (weak, nonatomic) NSString *armorName;
@property (nonatomic) int armorDefense;
@property (nonatomic) int armorCost;

-(instancetype)initArmorNewGame;

@end
