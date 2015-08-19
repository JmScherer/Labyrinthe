//
//  MZLShopFactory.h
//  Labyrinthe
//
//  Created by James Scherer on 8/11/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MZLWeapon.h"
#import "MZLArmor.h"
#import "MZLAccessory.h"
#import "MZLMerchant.h"

@interface MZLShopFactory : NSObject

-(MZLMerchant *) merchantWithBlock:(int)block;

@end
