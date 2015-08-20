//
//  MZLShopViewController.h
//  Labyrinthe
//
//  Created by James Scherer on 8/16/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZLPlayer.h"

@protocol MZLShopViewControllerDelegate <NSObject>

-(void)updatePlayer:(MZLPlayer *)player;

@end

@interface MZLShopViewController : UIViewController

// Shop Delegate

@property (weak, nonatomic) id <MZLShopViewControllerDelegate> delegate;

// Player

@property (nonatomic) MZLPlayer *player;

// Merchant Block Counter

@property (nonatomic) int merchantBlockCounter;

// IBOutlet Labels - Merchant

@property (weak, nonatomic) IBOutlet UIButton *merchantBuyItemButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *merchantLeaveStoreButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *merchantWeaponSelectButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *merchantArmorSelectButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *merchantAccessorySelectButtonLabel;
@property (weak, nonatomic) IBOutlet UIButton *merchantHealthPotionButtonLabel;

// IBOutlet Labels - Player

@property (weak, nonatomic) IBOutlet UILabel *userCurrentHeathLabel;
@property (weak, nonatomic) IBOutlet UILabel *userMaximumHealthLabel;
@property (weak, nonatomic) IBOutlet UILabel *userWeaponNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *userArmorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *userGoldAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *userDefenseAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *userAttackAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *userAccessoryNameLabel;

// IBOutlet - Purchase Indicators
@property (weak, nonatomic) IBOutlet UILabel *purchaseWeaponIndicator1;
@property (weak, nonatomic) IBOutlet UILabel *purchaseWeaponIndicator2;
@property (strong, nonatomic) IBOutlet UIView *purchaseArmorIndicator1;
@property (weak, nonatomic) IBOutlet UILabel *purchaseArmorIndicator2;
@property (weak, nonatomic) IBOutlet UILabel *purchaseAccessoryIndicator1;
@property (weak, nonatomic) IBOutlet UILabel *purchaseAccessoryIndicator2;
@property (weak, nonatomic) IBOutlet UILabel *purchasePotionIndicator1;
@property (weak, nonatomic) IBOutlet UILabel *purchasePotionIndicator2;


// IBAction Methods - Merchant

- (IBAction)buyItemButton:(id)sender;
- (IBAction)leaveStoreButton:(id)sender;
- (IBAction)buyWeaponButton:(id)sender;
- (IBAction)buyArmorButton:(id)sender;
- (IBAction)buyAccessoryButton:(id)sender;
- (IBAction)buyHealthPotionButton:(id)sender;

// Dismiss Block

@property (nonatomic, copy) void (^dismissBlock)(void);

@end
