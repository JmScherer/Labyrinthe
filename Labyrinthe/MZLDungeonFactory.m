//
//  MZLDungeonFactory.m
//  Labyrinthe
//
//  Created by James Scherer on 7/24/15.
//  Copyright (c) 2015 Mazag Laboratories. All rights reserved.
//

#import "MZLDungeonFactory.h"

@interface MZLDungeonFactory ()

@property (nonatomic, readonly) NSArray *monsterDirectory;

-(int)getRandomNumberBetween:(int)from to:(int)to;

@end

@implementation MZLDungeonFactory

-(instancetype)init {
    
    self = [super init];
    
    if(self) {
        
        MZLMonster *rat = [[MZLMonster alloc] init];
        rat.monsterDamage = 1;
        rat.monsterDefense = 0;
        rat.monsterFloor = 1;
        rat.monsterGold = 50;
        rat.monsterHealth = 3;
        rat.monsterImage = nil;
        rat.monsterName = @"Rat";
        
        MZLMonster *spider = [[MZLMonster alloc] init];
        spider.monsterDamage = 1;
        spider.monsterDefense = 0;
        spider.monsterFloor = 2;
        spider.monsterGold = 50;
        spider.monsterHealth = 3;
        spider.monsterImage = nil;
        spider.monsterName = @"Spider";
        
        MZLMonster *bat = [[MZLMonster alloc] init];
        bat.monsterDamage = 1;
        bat.monsterDefense = 0;
        bat.monsterFloor = 3;
        bat.monsterGold = 50;
        bat.monsterHealth = 3;
        bat.monsterImage = nil;
        bat.monsterName = @"Bat";
        
        MZLMonster *snake = [[MZLMonster alloc] init];
        snake.monsterDamage = 5;
        snake.monsterDefense = 0;
        snake.monsterFloor = 4;
        snake.monsterGold = 50;
        snake.monsterHealth = 3;
        snake.monsterImage = nil;
        snake.monsterName = @"Snake";
        
        MZLMonster *giantAnt = [[MZLMonster alloc] init];
        giantAnt.monsterDamage = 5;
        giantAnt.monsterDefense = 0;
        giantAnt.monsterFloor = 5;
        giantAnt.monsterGold = 50;
        giantAnt.monsterHealth = 3;
        giantAnt.monsterImage = nil;
        giantAnt.monsterName = @"Giant Ant";
        
        MZLMonster *centipede = [[MZLMonster alloc] init];
        centipede.monsterDamage = 1;
        centipede.monsterDefense = 0;
        centipede.monsterFloor = 6;
        centipede.monsterGold = 50;
        centipede.monsterHealth = 3;
        centipede.monsterImage = nil;
        centipede.monsterName = @"Centipede";
        
        MZLMonster *giantCrab = [[MZLMonster alloc] init];
        giantCrab.monsterDamage = 1;
        giantCrab.monsterDefense = 0;
        giantCrab.monsterFloor = 7;
        giantCrab.monsterGold = 50;
        giantCrab.monsterHealth = 3;
        giantCrab.monsterImage = nil;
        giantCrab.monsterName = @"Giant Crab";
        
        MZLMonster *scorpion = [[MZLMonster alloc] init];
        scorpion.monsterDamage = 1;
        scorpion.monsterDefense = 0;
        scorpion.monsterFloor = 8;
        scorpion.monsterGold = 50;
        scorpion.monsterHealth = 3;
        scorpion.monsterImage = nil;
        scorpion.monsterName = @"Scorpion";
        
        MZLMonster *wasp = [[MZLMonster alloc] init];
        wasp.monsterDamage = 1;
        wasp.monsterDefense = 0;
        wasp.monsterFloor = 9;
        wasp.monsterGold = 50;
        wasp.monsterHealth = 3;
        wasp.monsterImage = nil;
        wasp.monsterName = @"Wasp";
        
        MZLMonster *bee = [[MZLMonster alloc] init];
        bee.monsterDamage = 1;
        bee.monsterDefense = 0;
        bee.monsterFloor = 10;
        bee.monsterGold = 50;
        bee.monsterHealth = 3;
        bee.monsterImage = nil;
        bee.monsterName = @"Giant Crab";
        
        MZLMonster *slime = [[MZLMonster alloc] init];
        slime.monsterDamage = 1;
        slime.monsterDefense = 0;
        slime.monsterFloor = 11;
        slime.monsterGold = 50;
        slime.monsterHealth = 3;
        slime.monsterImage = nil;
        slime.monsterName = @"Slime";
        
        MZLMonster *bear = [[MZLMonster alloc] init];
        bear.monsterDamage = 1;
        bear.monsterDefense = 0;
        bear.monsterFloor = 12;
        bear.monsterGold = 50;
        bear.monsterHealth = 3;
        bear.monsterImage = nil;
        bear.monsterName = @"Bear";
        
        MZLMonster *cockatrice = [[MZLMonster alloc] init];
        cockatrice.monsterDamage = 1;
        cockatrice.monsterDefense = 1;
        cockatrice.monsterFloor = 13;
        cockatrice.monsterGold = 50;
        cockatrice.monsterHealth = 3;
        cockatrice.monsterImage = nil;
        cockatrice.monsterName = @"Cocatrice";
        
        MZLMonster *lizard = [[MZLMonster alloc] init];
        lizard.monsterDamage = 1;
        lizard.monsterDefense = 1;
        lizard.monsterFloor = 14;
        lizard.monsterGold = 50;
        lizard.monsterHealth = 5;
        lizard.monsterImage = nil;
        lizard.monsterName = @"Lizard";
        
        MZLMonster *gnoll = [[MZLMonster alloc] init];
        gnoll.monsterDamage = 1;
        gnoll.monsterDefense = 1;
        gnoll.monsterFloor = 15;
        gnoll.monsterGold = 50;
        gnoll.monsterHealth = 10;
        gnoll.monsterImage = nil;
        gnoll.monsterName = @"Gnoll";
        
        MZLMonster *harpy = [[MZLMonster alloc] init];
        harpy.monsterDamage = 1;
        harpy.monsterDefense = 1;
        harpy.monsterFloor = 16;
        harpy.monsterGold = 50;
        harpy.monsterHealth = 15;
        harpy.monsterImage = nil;
        harpy.monsterName = @"Harpy";
        
        MZLMonster *gremlin = [[MZLMonster alloc] init];
        gremlin.monsterDamage = 1;
        gremlin.monsterDefense = 1;
        gremlin.monsterFloor = 17;
        gremlin.monsterGold = 50;
        gremlin.monsterHealth = 15;
        gremlin.monsterImage = nil;
        gremlin.monsterName = @"Gremlin";
        
        MZLMonster *goblin = [[MZLMonster alloc] init];
        goblin.monsterDamage = 1;
        goblin.monsterDefense = 1;
        goblin.monsterFloor = 18;
        goblin.monsterGold = 50;
        goblin.monsterHealth = 16;
        goblin.monsterImage = nil;
        goblin.monsterName = @"Goblin";
        
        MZLMonster *willowisp = [[MZLMonster alloc] init];
        willowisp.monsterDamage = 1;
        willowisp.monsterDefense = 1;
        willowisp.monsterFloor = 19;
        willowisp.monsterGold = 50;
        willowisp.monsterHealth = 20;
        willowisp.monsterImage = nil;
        willowisp.monsterName = @"Will'o'Wisp";
        
        MZLMonster *skeleton = [[MZLMonster alloc] init];
        skeleton.monsterDamage = 1;
        skeleton.monsterDefense = 1;
        skeleton.monsterFloor = 20;
        skeleton.monsterGold = 50;
        skeleton.monsterHealth = 25;
        skeleton.monsterImage = nil;
        skeleton.monsterName = @"Spoopy Skellyman";
        
        MZLMonster *zombie = [[MZLMonster alloc] init];
        zombie.monsterDamage = 1;
        zombie.monsterDefense = 1;
        zombie.monsterFloor = 21;
        zombie.monsterGold = 50;
        zombie.monsterHealth = 25;
        zombie.monsterImage = nil;
        zombie.monsterName = @"Zombie";
        
        MZLMonster *ghost = [[MZLMonster alloc] init];
        ghost.monsterDamage = 1;
        ghost.monsterDefense = 1;
        ghost.monsterFloor = 22;
        ghost.monsterGold = 50;
        ghost.monsterHealth = 30;
        ghost.monsterImage = nil;
        ghost.monsterName = @"Ghost";
        
        MZLMonster *mummy = [[MZLMonster alloc] init];
        mummy.monsterDamage = 1;
        mummy.monsterDefense = 1;
        mummy.monsterFloor = 23;
        mummy.monsterGold = 50;
        mummy.monsterHealth = 30;
        mummy.monsterImage = nil;
        mummy.monsterName = @"Mummy";
        
        MZLMonster *hellhound = [[MZLMonster alloc] init];
        hellhound.monsterDamage = 1;
        hellhound.monsterDefense = 1;
        hellhound.monsterFloor = 24;
        hellhound.monsterGold = 50;
        hellhound.monsterHealth = 40;
        hellhound.monsterImage = nil;
        hellhound.monsterName = @"Hellhound";
        
        MZLMonster *owlbear = [[MZLMonster alloc] init];
        owlbear.monsterDamage = 1;
        owlbear.monsterDefense = 1;
        owlbear.monsterFloor = 25;
        owlbear.monsterGold = 50;
        owlbear.monsterHealth = 40;
        owlbear.monsterImage = nil;
        owlbear.monsterName = @"Owlbear";
        
        MZLMonster *sasquatch = [[MZLMonster alloc] init];
        sasquatch.monsterDamage = 1;
        sasquatch.monsterDefense = 1;
        sasquatch.monsterFloor = 26;
        sasquatch.monsterGold = 50;
        sasquatch.monsterHealth = 45;
        sasquatch.monsterImage = nil;
        sasquatch.monsterName = @"Sasquatch";
        
        MZLMonster *orc = [[MZLMonster alloc] init];
        orc.monsterDamage = 1;
        orc.monsterDefense = 1;
        orc.monsterFloor = 27;
        orc.monsterGold = 50;
        orc.monsterHealth = 50;
        orc.monsterImage = nil;
        orc.monsterName = @"Orc";
        
        MZLMonster *cyclops = [[MZLMonster alloc] init];
        cyclops.monsterDamage = 1;
        cyclops.monsterDefense = 1;
        cyclops.monsterFloor = 28;
        cyclops.monsterGold = 50;
        cyclops.monsterHealth = 55;
        cyclops.monsterImage = nil;
        cyclops.monsterName = @"Cyclops";
        
        MZLMonster *ogre = [[MZLMonster alloc] init];
        ogre.monsterDamage = 1;
        ogre.monsterDefense = 1;
        ogre.monsterFloor = 29;
        ogre.monsterGold = 50;
        ogre.monsterHealth = 55;
        ogre.monsterImage = nil;
        ogre.monsterName = @"Ogre";
        
        MZLMonster *lamia = [[MZLMonster alloc] init];
        lamia.monsterDamage = 1;
        lamia.monsterDefense = 1;
        lamia.monsterFloor = 30;
        lamia.monsterGold = 50;
        lamia.monsterHealth = 60;
        lamia.monsterImage = nil;
        lamia.monsterName = @"Lamia";
        
        MZLMonster *reptilian = [[MZLMonster alloc] init];
        reptilian.monsterDamage = 1;
        reptilian.monsterDefense = 1;
        reptilian.monsterFloor = 31;
        reptilian.monsterGold = 50;
        reptilian.monsterHealth = 60;
        reptilian.monsterImage = nil;
        reptilian.monsterName = @"Reptilian";
        
        MZLMonster *satyr = [[MZLMonster alloc] init];
        satyr.monsterDamage = 1;
        satyr.monsterDefense = 1;
        satyr.monsterFloor = 32;
        satyr.monsterGold = 50;
        satyr.monsterHealth = 65;
        satyr.monsterImage = nil;
        satyr.monsterName = @"Satyr";
        
        MZLMonster *ghoul = [[MZLMonster alloc] init];
        ghoul.monsterDamage = 1;
        ghoul.monsterDefense = 1;
        ghoul.monsterFloor = 33;
        ghoul.monsterGold = 50;
        ghoul.monsterHealth = 65;
        ghoul.monsterImage = nil;
        ghoul.monsterName = @"Ghoul";
        
        MZLMonster *abomination = [[MZLMonster alloc] init];
        abomination.monsterDamage = 1;
        abomination.monsterDefense = 1;
        abomination.monsterFloor = 34;
        abomination.monsterGold = 50;
        abomination.monsterHealth = 65;
        abomination.monsterImage = nil;
        abomination.monsterName = @"Abomination";
        
        MZLMonster *wraith = [[MZLMonster alloc] init];
        wraith.monsterDamage = 1;
        wraith.monsterDefense = 1;
        wraith.monsterFloor = 35;
        wraith.monsterGold = 50;
        wraith.monsterHealth = 70;
        wraith.monsterImage = nil;
        wraith.monsterName = @"Wraith";
        
        MZLMonster *gargoyle = [[MZLMonster alloc] init];
        gargoyle.monsterDamage = 1;
        gargoyle.monsterDefense = 1;
        gargoyle.monsterFloor = 36;
        gargoyle.monsterGold = 50;
        gargoyle.monsterHealth = 70;
        gargoyle.monsterImage = nil;
        gargoyle.monsterName = @"Gargoyle";
        
        MZLMonster *shadow = [[MZLMonster alloc] init];
        shadow.monsterDamage = 1;
        shadow.monsterDefense = 1;
        shadow.monsterFloor = 37;
        shadow.monsterGold = 50;
        shadow.monsterHealth = 70;
        shadow.monsterImage = nil;
        shadow.monsterName = @"Shadow";
        
        MZLMonster *genie = [[MZLMonster alloc] init];
        genie.monsterDamage = 1;
        genie.monsterDefense = 1;
        genie.monsterFloor = 38;
        genie.monsterHealth = 70;
        genie.monsterImage = nil;
        genie.monsterName = @"Genie";
        
        MZLMonster *medusa = [[MZLMonster alloc] init];
        medusa.monsterDamage = 1;
        medusa.monsterDefense = 1;
        medusa.monsterFloor = 39;
        medusa.monsterGold = 50;
        medusa.monsterHealth = 70;
        medusa.monsterImage = nil;
        medusa.monsterName = @"Medusa";
        
        MZLMonster *golem = [[MZLMonster alloc] init];
        golem.monsterDamage = 1;
        golem.monsterDefense = 1;
        golem.monsterFloor = 40;
        golem.monsterGold = 50;
        golem.monsterHealth = 70;
        golem.monsterImage = nil;
        golem.monsterName = @"Golem";
        
        MZLMonster *vampire = [[MZLMonster alloc] init];
        vampire.monsterDamage = 1;
        vampire.monsterDefense = 1;
        vampire.monsterFloor = 41;
        vampire.monsterGold = 50;
        vampire.monsterHealth = 75;
        vampire.monsterImage = nil;
        vampire.monsterName = @"Vampire";
        
        MZLMonster *dragon = [[MZLMonster alloc] init];
        dragon.monsterDamage = 1;
        dragon.monsterDefense = 1;
        dragon.monsterFloor = 42;
        dragon.monsterGold = 50;
        dragon.monsterHealth = 100;
        dragon.monsterImage = nil;
        dragon.monsterName = @"Dragon";
        
        MZLMonster *hydra = [[MZLMonster alloc] init];
        hydra.monsterDamage = 1;
        hydra.monsterDefense = 1;
        hydra.monsterFloor = 43;
        hydra.monsterGold = 50;
        hydra.monsterHealth = 100;
        hydra.monsterImage = nil;
        hydra.monsterName = @"Hydra";
        
        MZLMonster *succubus = [[MZLMonster alloc] init];
        succubus.monsterDamage = 1;
        succubus.monsterDefense = 1;
        succubus.monsterFloor = 44;
        succubus.monsterGold = 50;
        succubus.monsterHealth = 100;
        succubus.monsterImage = nil;
        succubus.monsterName = @"Succubus";
        
        MZLMonster *incubus = [[MZLMonster alloc] init];
        incubus.monsterDamage = 1;
        incubus.monsterDefense = 1;
        incubus.monsterFloor = 45;
        incubus.monsterGold = 50;
        incubus.monsterHealth = 100;
        incubus.monsterImage = nil;
        incubus.monsterName = @"Incubus";
        
        MZLMonster *eldritchHorror = [[MZLMonster alloc] init];
        eldritchHorror.monsterDamage = 1;
        eldritchHorror.monsterDefense = 2;
        eldritchHorror.monsterFloor = 46;
        eldritchHorror.monsterGold = 50;
        eldritchHorror.monsterHealth = 100;
        eldritchHorror.monsterImage = nil;
        eldritchHorror.monsterName = @"Eldritch Horror";
        
        MZLMonster *witch = [[MZLMonster alloc] init];
        witch.monsterDamage = 1;
        witch.monsterDefense = 2;
        witch.monsterFloor = 47;
        witch.monsterGold = 50;
        witch.monsterHealth = 100;
        witch.monsterImage = nil;
        witch.monsterName = @"Witch";
        
        MZLMonster *minotaur = [[MZLMonster alloc] init];
        minotaur.monsterDamage = 1;
        minotaur.monsterDefense = 1;
        minotaur.monsterFloor = 48;
        minotaur.monsterGold = 50;
        minotaur.monsterHealth = 100;
        minotaur.monsterImage = nil;
        minotaur.monsterName = @"Minotaur";
        
        MZLMonster *manticore = [[MZLMonster alloc] init];
        manticore.monsterDamage = 1;
        manticore.monsterDefense = 1;
        manticore.monsterFloor = 49;
        manticore.monsterGold = 50;
        manticore.monsterHealth = 100;
        manticore.monsterImage = nil;
        manticore.monsterName = @"Manticore";
        
        MZLMonster *chimera = [[MZLMonster alloc] init];
        chimera.monsterDamage = 1;
        chimera.monsterDefense = 1;
        chimera.monsterFloor = 50;
        chimera.monsterGold = 50;
        chimera.monsterHealth = 100;
        chimera.monsterImage = nil;
        chimera.monsterName = @"Chimera";
        
        MZLMonster *demon = [[MZLMonster alloc] init];
        demon.monsterDamage = 1;
        demon.monsterDefense = 1;
        demon.monsterFloor = 51;
        demon.monsterGold = 50;
        demon.monsterHealth = 150;
        demon.monsterImage = nil;
        demon.monsterName = @"Demon";
        
        MZLMonster *lich = [[MZLMonster alloc] init];
        lich.monsterDamage = 1;
        lich.monsterDefense = 1;
        lich.monsterFloor = 52;
        lich.monsterGold = 50;
        lich.monsterHealth = 150;
        lich.monsterImage = nil;
        lich.monsterName = @"Lich";
        
        MZLMonster *deathKnight = [[MZLMonster alloc] init];
        deathKnight.monsterDamage = 1;
        deathKnight.monsterDefense = 1;
        deathKnight.monsterFloor = 53;
        deathKnight.monsterGold = 50;
        deathKnight.monsterHealth = 500;
        deathKnight.monsterImage = nil;
        deathKnight.monsterName = @"Death Knight";
        
        _monsterDirectory = [[NSArray alloc] initWithObjects:rat, spider, bat, snake, giantAnt, centipede, giantCrab, scorpion, wasp, bee, slime, bear, cockatrice, lizard, gnoll, harpy, gremlin, goblin, willowisp, skeleton, zombie, ghost, mummy, hellhound, owlbear, sasquatch, orc, cyclops, ogre, lamia, reptilian, satyr, ghoul, abomination, wraith, gargoyle, shadow, genie, medusa, golem, vampire, dragon, hydra, succubus, incubus, eldritchHorror, witch, minotaur, manticore, chimera, demon, lich, deathKnight, nil];
        
    }
    
    return self;
    
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    
    return (int)from + arc4random() % (to-from+1);
    
}

-(NSMutableArray *)monsterBlockNewGame {
    
    _monsterBlock = [[NSMutableArray alloc] init];
    
    MZLMonster *monster1 = self.monsterDirectory[0];
    MZLMonster *monster2 = self.monsterDirectory[0];
    MZLMonster *monster3 = self.monsterDirectory[0];
    
    NSArray *randomize = [[NSArray alloc] initWithObjects:monster1, monster2, monster3, nil];
    
    NSLog(@"randomize: %d", [randomize count]);
    
    for(int i = 0; i < [randomize count]; i++){
        
        NSUInteger randomIndex = arc4random() % [randomize count];
        
        MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
        
        [_monsterBlock addObject:chosenMonster];
    }
    
    return _monsterBlock;
}

-(NSArray *)monsterBlock:(int)block  {
    
    [self.monsterBlock removeAllObjects];
    
    switch (block) {
        case 1: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[0];
            MZLMonster *monster2 = self.monsterDirectory[1];
            MZLMonster *monster3 = self.monsterDirectory[2];
            MZLMonster *monster4 = self.monsterDirectory[3];
            MZLMonster *monster5 = self.monsterDirectory[4];
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, monster5, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];

            }
            
            break;
        }
        case 2: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[3];
            MZLMonster *monster2 = self.monsterDirectory[4];
            MZLMonster *monster3 = self.monsterDirectory[5];
            MZLMonster *monster4 = self.monsterDirectory[6];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 3: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[5];
            MZLMonster *monster2 = self.monsterDirectory[6];
            MZLMonster *monster3 = self.monsterDirectory[7];
            MZLMonster *monster4 = self.monsterDirectory[8];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 4: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[7];
            MZLMonster *monster2 = self.monsterDirectory[8];
            MZLMonster *monster3 = self.monsterDirectory[9];
            MZLMonster *monster4 = self.monsterDirectory[10];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 5: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[9];
            MZLMonster *monster2 = self.monsterDirectory[10];
            MZLMonster *monster3 = self.monsterDirectory[11];
            MZLMonster *monster4 = self.monsterDirectory[12];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 6: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[11];
            MZLMonster *monster2 = self.monsterDirectory[12];
            MZLMonster *monster3 = self.monsterDirectory[13];
            MZLMonster *monster4 = self.monsterDirectory[14];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
        
        case 7: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[13];
            MZLMonster *monster2 = self.monsterDirectory[14];
            MZLMonster *monster3 = self.monsterDirectory[15];
            MZLMonster *monster4 = self.monsterDirectory[16];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 8: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[15];
            MZLMonster *monster2 = self.monsterDirectory[16];
            MZLMonster *monster3 = self.monsterDirectory[17];
            MZLMonster *monster4 = self.monsterDirectory[18];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 9: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[17];
            MZLMonster *monster2 = self.monsterDirectory[18];
            MZLMonster *monster3 = self.monsterDirectory[19];
            MZLMonster *monster4 = self.monsterDirectory[20];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 10: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[19];
            MZLMonster *monster2 = self.monsterDirectory[20];
            MZLMonster *monster3 = self.monsterDirectory[21];
            MZLMonster *monster4 = self.monsterDirectory[22];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 11: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[21];
            MZLMonster *monster2 = self.monsterDirectory[22];
            MZLMonster *monster3 = self.monsterDirectory[23];
            MZLMonster *monster4 = self.monsterDirectory[24];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 12: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[23];
            MZLMonster *monster2 = self.monsterDirectory[24];
            MZLMonster *monster3 = self.monsterDirectory[25];
            MZLMonster *monster4 = self.monsterDirectory[26];
            MZLMonster *monster5 = self.monsterDirectory[27];
            MZLMonster *monster6 = self.monsterDirectory[28];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, monster5, monster6, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 13: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[27];
            MZLMonster *monster2 = self.monsterDirectory[28];
            MZLMonster *monster3 = self.monsterDirectory[29];
            MZLMonster *monster4 = self.monsterDirectory[30];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 14: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[29];
            MZLMonster *monster2 = self.monsterDirectory[30];
            MZLMonster *monster3 = self.monsterDirectory[31];
            MZLMonster *monster4 = self.monsterDirectory[32];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 15: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[31];
            MZLMonster *monster2 = self.monsterDirectory[32];
            MZLMonster *monster3 = self.monsterDirectory[33];
            MZLMonster *monster4 = self.monsterDirectory[34];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 16: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[33];
            MZLMonster *monster2 = self.monsterDirectory[34];
            MZLMonster *monster3 = self.monsterDirectory[35];
            MZLMonster *monster4 = self.monsterDirectory[36];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 17: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[36];
            MZLMonster *monster2 = self.monsterDirectory[37];
            MZLMonster *monster3 = self.monsterDirectory[38];
            MZLMonster *monster4 = self.monsterDirectory[39];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 18: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[38];
            MZLMonster *monster2 = self.monsterDirectory[39];
            MZLMonster *monster3 = self.monsterDirectory[40];
            MZLMonster *monster4 = self.monsterDirectory[41];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 19: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[40];
            MZLMonster *monster2 = self.monsterDirectory[41];
            MZLMonster *monster3 = self.monsterDirectory[42];
            MZLMonster *monster4 = self.monsterDirectory[43];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
        
            for(int i = 0; i < 3; i++){
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
        
        case 20: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[42];
            MZLMonster *monster2 = self.monsterDirectory[43];
            MZLMonster *monster3 = self.monsterDirectory[44];
            MZLMonster *monster4 = self.monsterDirectory[45];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 21: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[44];
            MZLMonster *monster2 = self.monsterDirectory[45];
            MZLMonster *monster3 = self.monsterDirectory[46];
            MZLMonster *monster4 = self.monsterDirectory[47];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 22: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[45];
            MZLMonster *monster2 = self.monsterDirectory[46];
            MZLMonster *monster3 = self.monsterDirectory[47];
            MZLMonster *monster4 = self.monsterDirectory[48];
            MZLMonster *monster5 = self.monsterDirectory[49];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, monster4, monster5, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 23: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[47];
            MZLMonster *monster2 = self.monsterDirectory[48];
            MZLMonster *monster3 = self.monsterDirectory[49];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 24: {
            
            NSLog(@"Case %d happened in the switch statement", block);
            
            MZLMonster *monster1 = self.monsterDirectory[50];
            MZLMonster *monster2 = self.monsterDirectory[51];
            MZLMonster *monster3 = self.monsterDirectory[52];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        default:
            
            NSLog(@"If you reached this, there is a problem");
            
            MZLMonster *monster1 = self.monsterDirectory[50];
            MZLMonster *monster2 = self.monsterDirectory[51];
            MZLMonster *monster3 = self.monsterDirectory[52];
            
            NSMutableArray *randomize = [[NSMutableArray alloc] initWithObjects:monster1, monster2, monster3, nil];
            
            for(int i = 0; i < 3; i++){
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            
            break;
    }

    
    return self.monsterBlock;
    
}

-(MZLPlayer *)player {
    
    MZLPlayer *player = [[MZLPlayer alloc] initPlayerNewGame];
    
    MZLWeapon *weapon = [[MZLWeapon alloc] initWeaponNewGame];
    MZLArmor *armor = [[MZLArmor alloc] initArmorNewGame];
    
    player.playerWeapon = weapon;
    player.playerArmor = armor;
    
    return player;
}

@end
