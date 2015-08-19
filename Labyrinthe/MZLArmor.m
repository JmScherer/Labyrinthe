//
//  MZLArmor.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLArmor.h"

@implementation MZLArmor

-(instancetype)initArmorNewGame {
    
    self = [super init];
    
    if(self) {
        
        _armorName = @"Rags";
        _armorDefense = 0;
        _armorCost = 0;
        
    }
    
    return self;
    
}

@end
