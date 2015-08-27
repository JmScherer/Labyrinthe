//
//  MZLShopFactory.m
//  Labyrinthe
//
//  Created by James Scherer on 8/11/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLShopFactory.h"

@interface MZLShopFactory ()

@property (nonatomic) NSArray *merchantWeaponDirectory;
@property (nonatomic) NSArray *merchantArmorDirectory;
@property (nonatomic) NSArray *merchantAccessoryDirectory;
@property (nonatomic) NSArray *merchantHealthPotionDirectory;

@end

@implementation MZLShopFactory

-(instancetype)init {
    
    self = [super init];
    
    if(self) {
        
        /* Game Weapons */
        
        MZLWeapon *brokenSword = [[MZLWeapon alloc] init];
        brokenSword.weaponCost = 20;
        brokenSword.weaponDamage = 2;
        brokenSword.weaponName = @"Broken Sword";
        
        MZLWeapon *woodSword = [[MZLWeapon alloc] init];
        woodSword.weaponCost = 25;
        woodSword.weaponDamage = 3;
        woodSword.weaponName = @"Wood Sword";
        
        MZLWeapon *dullSword = [[MZLWeapon alloc] init];
        dullSword.weaponCost = 30;
        dullSword.weaponDamage = 5;
        dullSword.weaponName = @"Dull Sword";
        
        MZLWeapon *shortSword = [[MZLWeapon alloc] init];
        shortSword.weaponCost = 0;
        shortSword.weaponDamage = 10;
        shortSword.weaponName = @"Short Sword";
        
        MZLWeapon *copperSword = [[MZLWeapon alloc] init];
        copperSword.weaponCost = 0;
        copperSword.weaponDamage = 1;
        copperSword.weaponName = @"Copper Sword";
        
        MZLWeapon *tinSword = [[MZLWeapon alloc] init];
        tinSword.weaponCost = 0;
        tinSword.weaponDamage = 1;
        tinSword.weaponName = @"Tin Sword";
        
        MZLWeapon *bronzeSword = [[MZLWeapon alloc] init];
        bronzeSword.weaponCost = 0;
        bronzeSword.weaponDamage = 1;
        bronzeSword.weaponName = @"Bronze Sword";
        
        MZLWeapon *ironSword = [[MZLWeapon alloc] init];
        ironSword.weaponCost = 0;
        ironSword.weaponDamage = 1;
        ironSword.weaponName = @"Iron Sword";
        
        MZLWeapon *steelSword = [[MZLWeapon alloc] init];
        steelSword.weaponCost = 0;
        steelSword.weaponDamage = 1;
        steelSword.weaponName = @"Steel Sword";
        
        MZLWeapon *silverSword = [[MZLWeapon alloc] init];
        silverSword.weaponCost = 0;
        silverSword.weaponDamage = 1;
        silverSword.weaponName = @"Silver Sword";
        
        MZLWeapon *goldSword = [[MZLWeapon alloc] init];
        goldSword.weaponCost = 0;
        goldSword.weaponDamage = 1;
        goldSword.weaponName = @"Gold Sword";
        
        MZLWeapon *platinumSword = [[MZLWeapon alloc] init];
        platinumSword.weaponCost = 0;
        platinumSword.weaponDamage = 1;
        platinumSword.weaponName = @"Platinum Sword";
        
        MZLWeapon *cobaltSword = [[MZLWeapon alloc] init];
        cobaltSword.weaponCost = 0;
        cobaltSword.weaponDamage = 1;
        cobaltSword.weaponName = @"Cobalt Sword";
        
        MZLWeapon *mithrilSword = [[MZLWeapon alloc] init];
        mithrilSword.weaponCost = 0;
        mithrilSword.weaponDamage = 1;
        mithrilSword.weaponName = @"Mithril Sword";
        
        MZLWeapon *adamantiteSword = [[MZLWeapon alloc] init];
        adamantiteSword.weaponCost = 0;
        adamantiteSword.weaponDamage = 1;
        adamantiteSword.weaponName = @"Adamantite Sword";
        
        MZLWeapon *titaniumSword = [[MZLWeapon alloc] init];
        titaniumSword.weaponCost = 0;
        titaniumSword.weaponDamage = 1;
        titaniumSword.weaponName = @"Titanium Sword";
        
        MZLWeapon *runeSword = [[MZLWeapon alloc] init];
        runeSword.weaponCost = 0;
        runeSword.weaponDamage = 1;
        runeSword.weaponName = @"Rune Sword";
        
        MZLWeapon *bloodSword = [[MZLWeapon alloc] init];
        bloodSword.weaponCost = 0;
        bloodSword.weaponDamage = 1;
        bloodSword.weaponName = @"Blood Sword";
        
        MZLWeapon *moonSword = [[MZLWeapon alloc] init];
        moonSword.weaponCost = 0;
        moonSword.weaponDamage = 1;
        moonSword.weaponName = @"Moon Sword";
        
        MZLWeapon *masamune = [[MZLWeapon alloc] init];
        masamune.weaponCost = 1;
        masamune.weaponDamage = 0;
        masamune.weaponName = @"Masamune";
        
        MZLWeapon *tyrfing = [[MZLWeapon alloc] init];
        tyrfing.weaponCost = 0;
        tyrfing.weaponDamage = 1;
        tyrfing.weaponName = @"Tyrfing";
        
        MZLWeapon *hrunting = [[MZLWeapon alloc] init];
        hrunting.weaponCost = 1;
        hrunting.weaponDamage = 0;
        hrunting.weaponName = @"Hrunting";
        
        MZLWeapon *excalibur = [[MZLWeapon alloc] init];
        excalibur.weaponCost = 1;
        excalibur.weaponDamage = 0;
        excalibur.weaponName = @"Excalibur";
        
        MZLWeapon *ragnarok = [[MZLWeapon alloc] init];
        ragnarok.weaponCost = 1;
        ragnarok.weaponDamage = 1;
        ragnarok.weaponName = @"Ragnarok";
        
        MZLWeapon *darkMatter = [[MZLWeapon alloc] init];
        darkMatter.weaponCost = 0;
        darkMatter.weaponDamage = 1;
        darkMatter.weaponName = @"Dark Matter";
        
        _merchantWeaponDirectory = [[NSArray alloc] initWithObjects: brokenSword, woodSword, dullSword, shortSword, copperSword, tinSword, bronzeSword, ironSword, steelSword, silverSword, goldSword, platinumSword, cobaltSword, mithrilSword, adamantiteSword, titaniumSword, runeSword, bloodSword, moonSword, masamune, tyrfing, hrunting, excalibur, ragnarok, darkMatter, nil];
        
        /* Game Armor */
        
        MZLArmor *brokenShield = [[MZLArmor alloc] init];
        brokenShield.armorCost = 20;
        brokenShield.armorDefense = 1;
        brokenShield.armorName = @"Broken Shield";
        
        MZLArmor *woodShield = [[MZLArmor alloc] init];
        woodShield.armorCost = 25;
        woodShield.armorDefense = 1;
        woodShield.armorName = @"Wood Shield";
        
        MZLArmor *stoneShield = [[MZLArmor alloc] init];
        stoneShield.armorCost = 30;
        stoneShield.armorDefense = 1;
        stoneShield.armorName = @"Stone Shield";
        
        MZLArmor *roundShield = [[MZLArmor alloc] init];
        roundShield.armorCost = 0;
        roundShield.armorDefense = 1;
        roundShield.armorName = @"Round Shield";
        
        MZLArmor *copperShield = [[MZLArmor alloc] init];
        copperShield.armorCost = 0;
        copperShield.armorDefense = 1;
        copperShield.armorName = @"Copper Shield";
        
        MZLArmor *tinShield = [[MZLArmor alloc] init];
        tinShield.armorCost = 0;
        tinShield.armorDefense = 1;
        tinShield.armorName = @"Tin Shield";
        
        MZLArmor *bronzeShield = [[MZLArmor alloc] init];
        bronzeShield.armorCost = 0;
        bronzeShield.armorDefense = 1;
        bronzeShield.armorName = @"Bronze Shield";
        
        MZLArmor *ironShield = [[MZLArmor alloc] init];
        ironShield.armorCost = 0;
        ironShield.armorDefense = 1;
        ironShield.armorName = @"Iron Shield";
        
        MZLArmor *steelShield = [[MZLArmor alloc] init];
        steelShield.armorCost = 0;
        steelShield.armorDefense = 1;
        steelShield.armorName = @"Steel Shield";
        
        MZLArmor *silverShield = [[MZLArmor alloc] init];
        silverShield.armorCost = 0;
        silverShield.armorDefense = 1;
        silverShield.armorName = @"Silver Shield";
        
        MZLArmor *goldShield = [[MZLArmor alloc] init];
        goldShield.armorCost = 0;
        goldShield.armorDefense = 1;
        goldShield.armorName = @"Gold Shield";
        
        MZLArmor *platinumShield = [[MZLArmor alloc] init];
        platinumShield.armorCost = 0;
        platinumShield.armorDefense = 1;
        platinumShield.armorName = @"Platinum Shield";
        
        MZLArmor *cobaltShield = [[MZLArmor alloc] init];
        cobaltShield.armorCost = 0;
        cobaltShield.armorDefense = 1;
        cobaltShield.armorName = @"Cobalt Shield";
        
        MZLArmor *mithrilShield = [[MZLArmor alloc] init];
        mithrilShield.armorCost = 0;
        mithrilShield.armorDefense = 1;
        mithrilShield.armorName = @"Mithril Shield";
        
        MZLArmor *adamantiteShield = [[MZLArmor alloc] init];
        adamantiteShield.armorCost = 0;
        adamantiteShield.armorDefense = 1;
        adamantiteShield.armorName = @"Adamantite Shield";
        
        MZLArmor *titaniumShield = [[MZLArmor alloc] init];
        titaniumShield.armorCost = 0;
        titaniumShield.armorDefense = 1;
        titaniumShield.armorName = @"Titanium Shield";
        
        MZLArmor *diamondShield = [[MZLArmor alloc] init];
        diamondShield.armorCost = 0;
        diamondShield.armorDefense = 1;
        diamondShield.armorName = @"Diamond Sword";
        
        MZLArmor *stormShield = [[MZLArmor alloc] init];
        stormShield.armorCost = 0;
        stormShield.armorDefense = 1;
        stormShield.armorName = @"Storm Shield";
        
        MZLArmor *dragonShield = [[MZLArmor alloc] init];
        dragonShield.armorCost = 0;
        dragonShield.armorDefense = 1;
        dragonShield.armorName = @"Dragon Shield";
        
        MZLArmor *tortoiseShield = [[MZLArmor alloc] init];
        tortoiseShield.armorCost = 0;
        tortoiseShield.armorDefense = 1;
        tortoiseShield.armorName = @"Tortoise Shield";
        
        MZLArmor *demonShield = [[MZLArmor alloc] init];
        demonShield.armorCost = 0;
        demonShield.armorDefense = 1;
        demonShield.armorName = @"Demon Shield";
        
        MZLArmor *runedKiteShield = [[MZLArmor alloc] init];
        runedKiteShield.armorCost = 0;
        runedKiteShield.armorDefense = 1;
        runedKiteShield.armorName = @"Runed Kiteshield";
        
        MZLArmor *riseOfThePhoenix = [[MZLArmor alloc] init];
        riseOfThePhoenix.armorCost = 0;
        riseOfThePhoenix.armorDefense = 1;
        riseOfThePhoenix.armorName = @"Rise of the Phoenix";
        
        MZLArmor *eyelessWall = [[MZLArmor alloc] init];
        eyelessWall.armorCost = 0;
        eyelessWall.armorDefense = 1;
        eyelessWall.armorName = @"Eyeless Wall";
        
        MZLArmor *aegisOfTheGods = [[MZLArmor alloc] init];
        aegisOfTheGods.armorCost = 0;
        aegisOfTheGods.armorDefense = 1;
        aegisOfTheGods.armorName = @"Aegis of the Gods";
        
        _merchantArmorDirectory = [[NSArray alloc] initWithObjects:brokenShield, woodShield, stoneShield, roundShield, copperShield, tinShield, bronzeShield, ironShield, steelShield, silverShield, goldShield, platinumShield, cobaltShield, mithrilShield , adamantiteShield, titaniumShield, diamondShield, stormShield, dragonShield, tortoiseShield, demonShield, runedKiteShield, riseOfThePhoenix, eyelessWall, aegisOfTheGods, nil];
        
        MZLAccessory *smallHealthPotion = [[MZLAccessory alloc] init];
        smallHealthPotion.accessoryName = @"Small Potion";
        smallHealthPotion.accessoryEffect = @"Purchase to restore some health!";
        smallHealthPotion.accessoryCost = 5;
        smallHealthPotion.accessoryPotionRestore = 8;
        
        MZLAccessory *mediumHealthPotion = [[MZLAccessory alloc] init];
        mediumHealthPotion.accessoryName = @"Medium Potion";
        mediumHealthPotion.accessoryEffect = @"Purchase to restore more health!";
        mediumHealthPotion.accessoryCost = 5;
        mediumHealthPotion.accessoryPotionRestore = 16;
        
        MZLAccessory *largeHealthPotion = [[MZLAccessory alloc] init];
        largeHealthPotion.accessoryName = @"Large Potion";
        largeHealthPotion.accessoryEffect = @"Potion restores a lot of health";
        largeHealthPotion.accessoryCost = 5;
        largeHealthPotion.accessoryPotionRestore = 32;
        
        MZLAccessory *xHealthPotion = [[MZLAccessory alloc] init];
        xHealthPotion.accessoryName = @"X Potion";
        xHealthPotion.accessoryEffect = @"Potion restores full health";
        xHealthPotion.accessoryPotionRestore = 1000;
        xHealthPotion.accessoryCost = 5;
        
        _merchantHealthPotionDirectory = [[NSArray alloc] initWithObjects:smallHealthPotion, mediumHealthPotion, largeHealthPotion, xHealthPotion, nil];
        
        MZLAccessory *accessoryGauntlet = [[MZLAccessory alloc] init];
        accessoryGauntlet.accessoryEffect = @"Increases attack power";
        accessoryGauntlet.accessoryName = @"Gauntlet";
        
        MZLAccessory *accessoryPendant = [[MZLAccessory alloc] init];
        accessoryPendant.accessoryName = @"Pendant";
        accessoryPendant.accessoryEffect = @"Permanently increases maximum health points";
        
        MZLAccessory *accessoryEarring = [[MZLAccessory alloc] init];
        accessoryEarring.accessoryName = @"Earring";
        accessoryEarring.accessoryEffect = @"Health is recovered automatically at the end of battle";
        
        MZLAccessory *accessoryBoneBracer = [[MZLAccessory alloc] init];
        accessoryBoneBracer.accessoryName = @"Bone Bracer";
        accessoryBoneBracer.accessoryEffect = @"Grants chance of critical strikes, instantly killing opponents";
        
        MZLAccessory *accessorySilkSash = [[MZLAccessory alloc] init];
        accessorySilkSash.accessoryName = @"Silk Sash";
        accessorySilkSash.accessoryEffect = @"Increases the chance of finding chests";
        
        MZLAccessory *accessoryGreaves = [[MZLAccessory alloc] init];
        accessoryGreaves.accessoryName = @"Greaves";
        accessoryGreaves.accessoryEffect = @"Reduces enemy encounters by 1";
        
        MZLAccessory *accessoryChainVest = [[MZLAccessory alloc] init];
        accessoryChainVest.accessoryName = @"Chain Vest";
        accessoryChainVest.accessoryEffect = @"Increases defense power";
        
        MZLAccessory *accessoryWoodenCoin = [[MZLAccessory alloc] init];
        accessoryWoodenCoin.accessoryName = @"Wooden Coin";
        accessoryWoodenCoin.accessoryEffect = @"Increase amount of gold dropped by enemies";
        
        MZLAccessory *accessoryPocketWatch = [[MZLAccessory alloc] init];
        accessoryPocketWatch.accessoryName = @"Pocket Watch";
        accessoryPocketWatch.accessoryEffect = @"Mysterious stranger";
        
        // Consumable Items
        
        MZLAccessory *accessoryStoneRing = [[MZLAccessory alloc] init];
        accessoryStoneRing.accessoryName = @"Stone Ring";
        accessoryStoneRing.accessoryEffect = @"Pevents death. Restore to full health when killed. Breaks upon use.";
        
        MZLAccessory *accessoryEvilEye = [[MZLAccessory alloc] init];
        accessoryEvilEye.accessoryName = @"Evil Eye";
        accessoryEvilEye.accessoryEffect = @"Grants a temporary barrier to player for 75% of maximum health points. Breaks when depleted";
        
        _merchantAccessoryDirectory = [[NSArray alloc] initWithObjects:accessoryBoneBracer, accessoryChainVest, accessoryEarring, accessoryEvilEye, accessoryGauntlet, accessoryGreaves, accessoryPendant, accessorySilkSash, accessoryStoneRing, accessoryWoodenCoin, accessoryWoodenCoin, nil];
        
    }
    
    return self;
}

-(MZLMerchant *)merchantWithBlock:(int)block {

    MZLMerchant *merchant = [[MZLMerchant alloc] init];
    
    merchant.merchantWeapon = self.merchantWeaponDirectory[block];
    merchant.merchantArmor = self.merchantArmorDirectory[block];

    
    // Choose a random accessory
    
    NSUInteger randomIndex = arc4random() % [self.merchantAccessoryDirectory count];
    if (block <= 4) {
        merchant.merchantAccessoryFirst = nil;
    }
    else
        merchant.merchantAccessoryFirst = self.merchantAccessoryDirectory[randomIndex];
    
    // Determine available potion
    
    if(block == 0)
        merchant.merchantHealthPotion = nil;
    else if (block <= 7 && block != 0)
        merchant.merchantHealthPotion = self.merchantHealthPotionDirectory[0];
    else if (block >= 8 && block <= 14)
        merchant.merchantHealthPotion = self.merchantHealthPotionDirectory[1];
    else if (block >= 15 && block <= 20)
        merchant.merchantHealthPotion = self.merchantHealthPotionDirectory[2];
    else
        merchant.merchantHealthPotion = self.merchantHealthPotionDirectory[3];
    
    return merchant;
    
}

@end
