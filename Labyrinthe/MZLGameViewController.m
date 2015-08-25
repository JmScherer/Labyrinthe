//
//  MZLGameViewController.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLGameViewController.h"
#import "MZLShopViewController.h"
#import "MZLDungeonFactory.h"
#import "MZLShopFactory.h"

@interface MZLGameViewController () <MZLShopViewControllerDelegate>

@property (nonatomic, strong) MZLDungeonFactory *factory;
@property (nonatomic, strong) MZLShopFactory *shop;

@end

@implementation MZLGameViewController

# pragma mark - Initializing Game

-(instancetype)init {
    
    self = [super init];
    
    if(self) {
        
        _factory = [[MZLDungeonFactory alloc] init];
        
        _merchantEncounter = YES;
        _monsterBlock = [_factory monsterBlockNewGame];
        _player = [_factory player];
        
        _monster = _monsterBlock[0];
        _floorCounter = 0;
        _creatureCounter = 0;
        _blockCounter = 0;
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.monster = self.monsterBlock[0];
    
    self.view.hidden = YES;
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    self.monsterMaxHealthLabel.text = [NSString stringWithFormat:@"%d", self.monster.monsterHealth];
    
    [self updateScreen];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - UI Update

-(void)updateScreen {
    
    /* Merchant */

    if(self.merchantEncounter == YES) {
        
        self.view.hidden = YES;
        
        self.merchantEncounter = NO;
        
        MZLShopViewController *shopViewController = [[MZLShopViewController alloc] init];
        
        shopViewController.merchantBlockCounter = self.blockCounter;
        shopViewController.player = self.player;
        
        shopViewController.dismissBlock = ^{
            self.view.hidden = NO;
            [self updateScreen];
        };
        
        [self presentViewController:shopViewController animated:NO completion:nil];
        
        //[self.navigationController pushViewController:shopViewController animated:NO];
        
    }
    
    /* User Stats */
    
    // User Stat Value Labels
    
    self.userCurrentHeathLabel.text = [NSString stringWithFormat:@"%d", self.player.playerHealthCurrent];
    self.userMaximumHealthLabel.text = [NSString stringWithFormat:@"%d", self.player.playerHealthMaximum];
    self.userDefenseAmountLabel.text = [NSString stringWithFormat:@"%d", self.player.playerArmor.armorDefense];
    self.userAttackAmountLabel.text = [NSString stringWithFormat:@"%d", self.player.playerWeapon.weaponDamage];
    self.userGoldAmountLabel.text = [NSString stringWithFormat:@"%d", self.player.playerGold];
    
    // User Equipment Type Labels
    
    self.userArmorNameLabel.text = self.player.playerArmor.armorName;
    self.userWeaponNameLabel.text = self.player.playerWeapon.weaponName;
    self.userAccessoryNameLabel.text = self.player.playerAccessory.accessoryName;
    
    /* Combat */
    
    // Monster Stat Labels
    
    self.floorCounterLabel.text = [NSString stringWithFormat:@"%d", self.floorCounter + 1];
    self.monsterHealthLabel.text = [NSString stringWithFormat:@"%d", self.monster.monsterHealth];
    self.monsterAttackLabel.text = [NSString stringWithFormat:@"%d", self.monster.monsterDamage];
    self.monsterDefenseLabel.text = [NSString stringWithFormat:@"%d", self.monster.monsterDefense];
    self.monsterNameLabel.text = self.monster.monsterName;
    
    // Which Monster in cycle?
    
    if(self.creatureCounter == 0) {
        self.monsterFight.text = @"1st Monster";
    }
    if(self.creatureCounter == 1) {
        self.monsterFight.text = @"2nd Monster";
    }
    if(self.creatureCounter == 2) {
        self.monsterFight.text = @"3rd Monster";
    }
    
    
}

# pragma mark - Game Helper Methods

-(void)newFloor {
    
    if(self.creatureCounter < 2) {
        
        self.creatureCounter++;
        
        self.monster = self.monsterBlock[self.creatureCounter];
        
        self.monsterMaxHealthLabel.text = [NSString stringWithFormat:@"%d", self.monster.monsterHealth];
    }
    
    else {
        
        [self blockCounterCheck];
        self.creatureCounter = 0;
        
        NSLog(@"block counter: %d", self.blockCounter);
        
        self.monsterBlock = [self.factory monsterBlock:self.blockCounter];
        
        self.monster = self.monsterBlock[self.creatureCounter];
        
        self.merchantEncounter = YES;
        
    }
}

-(void)combatPlayerToMonster {
    
    // Combat: Player vs Monster
    int i, x;
    
    x = self.player.playerWeapon.weaponDamage - self.monster.monsterDefense;
    
    if(x < 0){
        x = 0;
    }
    
    i = self.monster.monsterHealth - x;
    
    self.monster.monsterHealth = i;
    
    // Print Out Combat Log
    
    /*
    NSLog(@"================================");
    NSLog(@"Defending Monster: %@", self.monster.monsterName);
    NSLog(@"Monster's Health Before: %d", self.monster.monsterHealth);
    NSLog(@"Monster's Defense: %d", self.monster.monsterDefense);
    NSLog(@"Player's Damage: %d", self.player.playerDamage);
    NSLog(@"Monster's Health After: %d", i);
    NSLog(@"---------------------------");
    NSLog(@"Damage Dealt: %d", x);
    */
}

-(void)combatMonsterToPlayer {
    
    // Combat: Monster Vs. Player
    
    int i, x;
    
    x = self.monster.monsterDamage - self.player.playerArmor.armorDefense;
    
    if(x < 0){
        x = 0;
    }
    
    i = self.player.playerHealthCurrent - x;
    
    self.player.playerHealthCurrent = i;
    
    // Print Out Combat Log
    
    /*
    NSLog(@"================================");
    NSLog(@"Attacking Monster: %@", self.monster.monsterName);
    NSLog(@"Player's Health Before: %d", self.player.playerHealthCurrent);
    NSLog(@"Player's Defense: %d", self.player.playerDefense);
    NSLog(@"Monster's Damage: %d", self.monster.monsterDamage);
    NSLog(@"Player's Health After: %d", i);
    NSLog(@"---------------------------");
    NSLog(@"Damage Received: %d", x);
    */
}

-(void)resetGame {
    
    NSLog(@"Game Over");
    
    UIAlertView *gameOver = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"You have died." delegate:self cancelButtonTitle:nil otherButtonTitles:@"Reset", nil];
    
    [gameOver show];
    
}

-(void)blockCounterCheck {
    
    self.blockCounter++;
    
    if(self.blockCounter >= 25) {
     
        [self resetGame];
        
    }
}

# pragma mark - Shop Controller Delegate Method

-(void)updatePlayer:(MZLPlayer *)player {
    
    self.player = player;
    
}

# pragma mark - Action Buttons

- (IBAction)attackButton:(id)sender {
    
    [self combatPlayerToMonster];
    
    if (self.monster.monsterHealth <= 0) {
        
        NSLog(@"Monster Died: %@", self.monster.monsterName);
        
        self.player.playerGold += self.monster.monsterGold;
        
        self.floorCounter++;
        
        [self newFloor];
        
    }
    
    else {
        
        NSLog(@"Monster Lives and attacks Player");
        
        [self combatMonsterToPlayer];
    }
    
    if (self.player.playerHealthCurrent <= 0) {
        
        [self resetGame];
        
    }
    
    [self updateScreen];
}

# pragma mark - Alert View - Restart Game

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSLog(@"Restarting Game");
    
    self.floorCounter = 0;
    self.blockCounter = 0;
    self.merchantEncounter = YES;
    self.player = [self.factory player];
    self.monsterBlock = [self.factory monsterBlockNewGame];
    
    self.monster = self.monsterBlock[0];
    
    [self updateScreen];
    
}

@end
