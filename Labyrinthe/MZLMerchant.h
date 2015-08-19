//
//  MZLMerchant.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MZLWeapon.h"
#import "MZLArmor.h"
#import "MZLAccessory.h"

@interface MZLMerchant : NSObject

@property (nonatomic, weak) MZLWeapon *merchantWeapon;
@property (nonatomic, weak) MZLArmor *merchantArmor;
@property (nonatomic, weak) MZLAccessory *merchantAccessoryFirst;
@property (nonatomic, weak) MZLAccessory *merchantHealthPotion;

-(instancetype)init;

@end
