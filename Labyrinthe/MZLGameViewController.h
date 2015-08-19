//
//  MZLGameViewController.h
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZLPlayer.h"
#import "MZLMerchant.h"
#import "MZLMonster.h"

@interface MZLGameViewController : UIViewController <UIAlertViewDelegate>

// Dungeon Counters

@property (nonatomic) int floorCounter;
@property (nonatomic) int blockCounter;
@property (nonatomic) int creatureCounter;

// Merchant/Combat Indicator

@property (nonatomic) BOOL merchantEncounter;
@property (weak, nonatomic) IBOutlet UILabel *monsterFight;

// Item & Monster Directories

@property (nonatomic, copy) NSMutableArray *monsterBlock;

// Instance Variables - Player, Merchant, Monsters

@property (nonatomic, strong) MZLPlayer *player;
@property (nonatomic, strong) MZLMerchant *merchant;
@property (nonatomic, strong) MZLMonster *monster;

// IBOutlets - Game Interface - User

@property (weak, nonatomic) IBOutlet UILabel *userCurrentHeathLabel;
@property (weak, nonatomic) IBOutlet UILabel *userMaximumHealthLabel;
@property (weak, nonatomic) IBOutlet UILabel *userWeaponNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *userArmorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *userGoldAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *userDefenseAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *userAttackAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *userAccessoryNameLabel;

// IBOutlets - Game Interface - Monster
@property (weak, nonatomic) IBOutlet UILabel *monsterHealthStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterAttackStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterDefenseStaticLabel;

@property (weak, nonatomic) IBOutlet UILabel *monsterNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterHealthLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterMaxHealthLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterAttackLabel;
@property (weak, nonatomic) IBOutlet UILabel *monsterDefenseLabel;

// IBOutlet - Etc

@property (weak, nonatomic) IBOutlet UILabel *floorCounterStaticLabel;
@property (weak, nonatomic) IBOutlet UILabel *floorCounterLabel;

// IBOutlet - UI Button Outlets
@property (weak, nonatomic) IBOutlet UIButton *combatAttackButtonLabel;




// IBActions - Available Combat Actions - User

- (IBAction)attackButton:(id)sender;

@end
