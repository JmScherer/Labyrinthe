//
//  MZLShopViewController.m
//  Labyrinthe
//
//  Created by James Scherer on 8/16/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLShopViewController.h"
#import "MZLShopFactory.h"
#import "MZLMerchant.h"

@interface MZLShopViewController ()

@property (nonatomic, strong) MZLShopFactory *shop;
@property (nonatomic, strong) MZLMerchant *merchant;

@property (nonatomic) BOOL selectedWeapon;
@property (nonatomic) BOOL selectedArmor;
@property (nonatomic) BOOL selectedAccessory;
@property (nonatomic) BOOL selectedHealthPotion;

@end

@implementation MZLShopViewController

-(instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        
        _shop = [[MZLShopFactory alloc] init];
        
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"Merchant Block Counter: %d", self.merchantBlockCounter);
    
    self.merchant = [self.shop merchantWithBlock:self.merchantBlockCounter];
    
    [self updateScreen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateScreen {
    
    /* Merchant */
    
    // Merchant Button Labels
    
    [self.merchantWeaponSelectButtonLabel setTitle:[NSString stringWithFormat:@"(%d) %@", self.merchant.merchantWeapon.weaponCost, self.merchant.merchantWeapon.weaponName] forState:UIControlStateNormal];
    [self.merchantArmorSelectButtonLabel setTitle:[NSString stringWithFormat:@"%@ (%d)", self.merchant.merchantArmor.armorName, self.merchant.merchantArmor.armorCost] forState:UIControlStateNormal];
    [self.merchantAccessorySelectButtonLabel setTitle:self.merchant.merchantAccessoryFirst.accessoryName forState:UIControlStateNormal];
    [self.merchantHealthPotionButtonLabel setTitle:self.merchant.merchantHealthPotion.accessoryName forState:UIControlStateNormal];
    
    [self.merchantWeaponSelectButtonLabel setTintColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]];
    [self.merchantArmorSelectButtonLabel setTintColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]];
    [self.merchantHealthPotionButtonLabel setTintColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]];
    [self.merchantAccessorySelectButtonLabel setTintColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]];
    
    // Merchant Purchase Indicators
    
    self.purchaseArmorIndicator1.hidden = YES;
    self.purchaseArmorIndicator2.hidden = YES;
    self.purchaseWeaponIndicator1.hidden = YES;
    self.purchaseWeaponIndicator2.hidden = YES;
    self.purchaseAccessoryIndicator1.hidden = YES;
    self.purchaseAccessoryIndicator2.hidden = YES;
    self.purchasePotionIndicator1.hidden = YES;
    self.purchasePotionIndicator2.hidden = YES;
    
    // Merchant Selected Items
    
    self.selectedArmor = NO;
    self.selectedHealthPotion = NO;
    self.selectedAccessory = NO;
    self.selectedWeapon = NO;
    
    // Check for Accessory or Potion
    
    if(self.merchant.merchantHealthPotion == NULL) {
        self.merchantHealthPotionButtonLabel.enabled = NO;
    }
    
    if(self.merchant.merchantAccessoryFirst == NULL) {
        self.merchantAccessorySelectButtonLabel.enabled = NO;
    }
    
    /* User Stats */
    
    // User Stat Value Labels
    
    self.userCurrentHeathLabel.text = [NSString stringWithFormat:@"%d", self.player.playerHealthCurrent];
    self.userMaximumHealthLabel.text = [NSString stringWithFormat:@"%d", self.player.playerHealthMaximum];
    self.userDefenseAmountLabel.text = [NSString stringWithFormat:@"%d", self.player.playerArmor.armorDefense];
    self.userAttackAmountLabel.text = [NSString stringWithFormat:@"%d", self.player.playerWeapon.weaponDamage];
    self.userGoldAmountLabel.text = [NSString stringWithFormat:@"%d", self.player.playerGold];
    
    self.userArmorNameLabel.text = self.player.playerArmor.armorName;
    self.userWeaponNameLabel.text = self.player.playerWeapon.weaponName;
    self.userAccessoryNameLabel.text = self.player.playerAccessory.accessoryName;
    
    // Player Accessory Indicators
    
    self.accyEvilEye.hidden = YES;
    self.accyStoneRing.hidden = YES;
    
}

- (IBAction)buyItemButton:(id)sender {
    
    if(self.selectedWeapon == YES && self.player.playerGold >= self.merchant.merchantWeapon.weaponCost) {
        
        self.player.playerGold = self.player.playerGold - self.merchant.merchantWeapon.weaponCost;
        self.player.playerWeapon = self.merchant.merchantWeapon;
        
    }
    
    if (self.selectedArmor == YES && self.player.playerGold >= self.merchant.merchantArmor.armorCost) {
        
        self.player.playerGold = self.player.playerGold - self.merchant.merchantArmor.armorCost;
        self.player.playerArmor = self.merchant.merchantArmor;
        
    }
    
    if (self.selectedHealthPotion == YES && self.player.playerGold >= self.merchant.merchantHealthPotion.accessoryCost && self.player.playerHealthCurrent < self.player.playerHealthMaximum) {
        
        
        self.player.playerGold = self.player.playerGold - self.merchant.merchantHealthPotion.accessoryCost;
        self.player.playerHealthCurrent += self.merchant.merchantHealthPotion.accessoryPotionRestore;
        
        if (self.player.playerHealthCurrent > self.player.playerHealthMaximum) {
            self.player.playerHealthCurrent = self.player.playerHealthMaximum;
        }
        
    }
    
    if (self.selectedAccessory == YES) {
        
        self.player.playerGold = self.player.playerGold - self.merchant.merchantAccessoryFirst.accessoryCost;
        self.player.playerAccessory = self.merchant.merchantAccessoryFirst;
        
    }
    
    [self updateScreen];
    
}

- (IBAction)leaveStoreButton:(id)sender {
    
    [self.delegate updatePlayer:self.player];
    
    //[self.navigationController popToRootViewControllerAnimated:NO];
    
    [self dismissViewControllerAnimated:NO completion:self.dismissBlock];

    
}

- (IBAction)buyWeaponButton:(id)sender {

    [self updateScreen];
    
    [self.merchantWeaponSelectButtonLabel setTintColor:[UIColor blackColor]];
    
    self.purchaseWeaponIndicator1.hidden = NO;
    self.purchaseWeaponIndicator2.hidden = NO;
    
    self.selectedWeapon = YES;
    
}

- (IBAction)buyArmorButton:(id)sender {

    [self updateScreen];
    
    [self.merchantArmorSelectButtonLabel setTintColor:[UIColor blackColor]];
    
    self.purchaseArmorIndicator1.hidden = NO;
    self.purchaseArmorIndicator2.hidden = NO;
    
    self.selectedArmor = YES;

    
}

- (IBAction)buyAccessoryButton:(id)sender {

    [self updateScreen];
    
    [self.merchantAccessorySelectButtonLabel setTintColor:[UIColor blackColor]];
    
    self.purchaseAccessoryIndicator1.hidden = NO;
    self.purchaseAccessoryIndicator2.hidden = NO;
    
    self.selectedAccessory = YES;
    
}

- (IBAction)buyHealthPotionButton:(id)sender {
    
    [self updateScreen];
    
    [self.merchantHealthPotionButtonLabel setTintColor:[UIColor blackColor]];
    
    self.purchasePotionIndicator1.hidden = NO;
    self.purchasePotionIndicator2.hidden = NO;
    
    self.selectedHealthPotion = YES;
    
}

@end
