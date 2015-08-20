//
//  MZLPlayerFactory.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLPlayer.h"

@implementation MZLPlayer


-(instancetype)initPlayerNewGame {
    
    self = [super init];
    
    if(self) {
        
        _playerHealthCurrent = 10;
        _playerHealthMaximum = 10;
        _playerGold = 35;
        
    }
    
    return self;
    
}

@end
