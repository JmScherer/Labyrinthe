//
//  MZLMerchant.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLMerchant.h"

@implementation MZLMerchant

-(instancetype)init {
    
    self = [super init];
    
    if(self) {
        
        _merchantAccessoryFirst = nil;
        _merchantHealthPotion = nil;
        _merchantArmor = nil;
        _merchantWeapon = nil;
        
    }
    
    return self;
    
}

@end
