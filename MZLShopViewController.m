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
    
    //NSLog(@"Merchant Weapon: %@", self.merchant.merchantWeapon.weaponName);
    //NSLog(@"Merchant Armor: %@", self.merchant.merchantArmor.armorName);
    
    [self.merchantWeaponSelectButtonLabel setTitle:self.merchant.merchantWeapon.weaponName forState:UIControlStateNormal];
    [self.merchantArmorSelectButtonLabel setTitle:self.merchant.merchantArmor.armorName forState:UIControlStateNormal];
    [self.merchantAccessorySelectButtonLabel setTitle:self.merchant.merchantAccessoryFirst.accessoryName forState:UIControlStateNormal];
    [self.merchantHealthPotionButtonLabel setTitle:self.merchant.merchantHealthPotion.accessoryName forState:UIControlStateNormal];
    
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
    
}

- (IBAction)buyItemButton:(id)sender {
    
}

- (IBAction)leaveStoreButton:(id)sender {
    
    [self.delegate updatePlayer:self.player];
    
    //[self.navigationController popToRootViewControllerAnimated:NO];
    
    [self dismissViewControllerAnimated:NO completion:self.dismissBlock];

    
}

- (IBAction)buyWeaponButton:(id)sender {

    NSLog(@"Before: %@", self.player.playerWeapon.weaponName);
    
    self.player.playerWeapon = self.merchant.merchantWeapon;
   
    NSLog(@"After: %@", self.player.playerWeapon.weaponName);
    
    [self updateScreen];
    
}

- (IBAction)buyArmorButton:(id)sender {
    
    NSLog(@"Before: %@", self.player.playerArmor.armorName);
    
    self.player.playerArmor = self.merchant.merchantArmor;
    
    NSLog(@"After: %@", self.player.playerArmor.armorName);
    
    [self updateScreen];
    
}

- (IBAction)buyAccessoryButton:(id)sender {
    
    
}

- (IBAction)buyHealthPotionButton:(id)sender {
    
    
}

@end
