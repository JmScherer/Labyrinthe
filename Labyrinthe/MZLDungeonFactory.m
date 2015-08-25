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

@end

@implementation MZLDungeonFactory

// First Block

-(MZLMonster *)setRat {
    
    MZLMonster *rat = [[MZLMonster alloc] init];
    rat.monsterDamage = [self randomLower:1 Upper:2];
    rat.monsterDefense = [self randomLower:0 Upper:0];
    rat.monsterHealth = [self randomLower:2 Upper:3];
    rat.monsterGold = [self randomLower:6 Upper:8];
    rat.monsterImage = nil;
    rat.monsterName = @"Rat";
    
    return rat;
}

-(MZLMonster *)setSpider {
    
    MZLMonster *spider = [[MZLMonster alloc] init];
    spider.monsterDamage = [self randomLower:1 Upper:3];
    spider.monsterDefense = [self randomLower:0 Upper:0];
    spider.monsterHealth = [self randomLower:2 Upper:3];
    spider.monsterGold = [self randomLower:5 Upper:9];
    spider.monsterImage = nil;
    spider.monsterName = @"Spider";
    
    return spider;
    
}

-(MZLMonster *)setBat {
    
    MZLMonster *bat = [[MZLMonster alloc] init];
    bat.monsterDamage = [self randomLower:1 Upper:2];
    bat.monsterDefense = [self randomLower:0 Upper:0];
    bat.monsterHealth = [self randomLower:2 Upper:3];
    bat.monsterGold = [self randomLower:6 Upper:7];
    bat.monsterImage = nil;
    bat.monsterName = @"Bat";
    
    return bat;
    
}

// Second Block

-(MZLMonster *)setSnake {
    
    MZLMonster *snake = [[MZLMonster alloc] init];
    snake.monsterDamage = [self randomLower:1 Upper:3];
    snake.monsterDefense = [self randomLower:0 Upper:0];
    snake.monsterHealth = [self randomLower:2 Upper:3];
    snake.monsterGold = [self randomLower:5 Upper:9];
    snake.monsterImage = nil;
    snake.monsterName = @"Snake";
    
    return snake;
    
}

-(MZLMonster *)setGiantAnt {
    
    MZLMonster *giantAnt = [[MZLMonster alloc] init];
    giantAnt.monsterDamage = [self randomLower:1 Upper:3];
    giantAnt.monsterDefense = [self randomLower:0 Upper:0];
    giantAnt.monsterHealth = [self randomLower:2 Upper:3];
    giantAnt.monsterGold = [self randomLower:5 Upper:9];
    giantAnt.monsterImage = nil;
    giantAnt.monsterName = @"Giant Ant";
    
    return giantAnt;
    
}

// Third Block

-(MZLMonster *)setCentipede {
    
    MZLMonster *centipede = [[MZLMonster alloc] init];
    centipede.monsterDamage = [self randomLower:1 Upper:3];
    centipede.monsterDefense = [self randomLower:0 Upper:0];
    centipede.monsterHealth = [self randomLower:2 Upper:3];
    centipede.monsterGold = [self randomLower:5 Upper:9];
    centipede.monsterImage = nil;
    centipede.monsterName = @"Centipede";
    
    return centipede;
    
}

-(MZLMonster *)setGiantCrab {
    
    MZLMonster *giantCrab = [[MZLMonster alloc] init];
    giantCrab.monsterDamage = [self randomLower:1 Upper:3];
    giantCrab.monsterDefense = [self randomLower:0 Upper:0];
    giantCrab.monsterHealth = [self randomLower:2 Upper:3];
    giantCrab.monsterGold = [self randomLower:5 Upper:9];
    giantCrab.monsterImage = nil;
    giantCrab.monsterName = @"Giant Crab";
    
    return giantCrab;
    
}

// Fourth Block

-(MZLMonster *)setScorpion {
    
    MZLMonster *scorpion = [[MZLMonster alloc] init];
    scorpion.monsterDamage = [self randomLower:1 Upper:3];
    scorpion.monsterDefense = [self randomLower:0 Upper:0];
    scorpion.monsterHealth = [self randomLower:2 Upper:3];
    scorpion.monsterGold = [self randomLower:5 Upper:9];
    scorpion.monsterImage = nil;
    scorpion.monsterName = @"Scorpion";
    
    return scorpion;
    
}

-(MZLMonster *)setWasp {
    
    MZLMonster *wasp = [[MZLMonster alloc] init];
    wasp.monsterDamage = [self randomLower:1 Upper:3];
    wasp.monsterDefense = [self randomLower:0 Upper:0];
    wasp.monsterHealth = [self randomLower:2 Upper:3];
    wasp.monsterGold = [self randomLower:5 Upper:9];
    wasp.monsterImage = nil;
    wasp.monsterName = @"Wasp";
    
    return wasp;
    
}

// Fifth Block

-(MZLMonster *)setBee {
    
    MZLMonster *bee = [[MZLMonster alloc] init];
    bee.monsterDamage = [self randomLower:1 Upper:3];
    bee.monsterDefense = [self randomLower:0 Upper:0];
    bee.monsterHealth = [self randomLower:2 Upper:3];
    bee.monsterGold = [self randomLower:5 Upper:9];
    bee.monsterImage = nil;
    bee.monsterName = @"Bee";
    
    return bee;
    
}

-(MZLMonster *)setSlime {
    
    MZLMonster *slime = [[MZLMonster alloc] init];
    slime.monsterDamage = [self randomLower:1 Upper:3];
    slime.monsterDefense = [self randomLower:0 Upper:0];
    slime.monsterHealth = [self randomLower:2 Upper:3];
    slime.monsterGold = [self randomLower:5 Upper:9];
    slime.monsterImage = nil;
    slime.monsterName = @"Slime";
    
    return slime;
    
}

// Sixth Block

-(MZLMonster *)setBear {
    
    MZLMonster *bear = [[MZLMonster alloc] init];
    bear.monsterDamage = [self randomLower:1 Upper:3];
    bear.monsterDefense = [self randomLower:0 Upper:0];
    bear.monsterHealth = [self randomLower:2 Upper:3];
    bear.monsterGold = [self randomLower:5 Upper:9];
    bear.monsterImage = nil;
    bear.monsterName = @"Bear";
    
    return bear;
    
}

-(MZLMonster *)setCockatrice {
    
    MZLMonster *cockatrice = [[MZLMonster alloc] init];
    cockatrice.monsterDamage = [self randomLower:1 Upper:3];
    cockatrice.monsterDefense = [self randomLower:0 Upper:0];
    cockatrice.monsterHealth = [self randomLower:2 Upper:3];
    cockatrice.monsterGold = [self randomLower:5 Upper:9];
    cockatrice.monsterImage = nil;
    cockatrice.monsterName = @"Cockatrice";
    
    return cockatrice;
    
}

// Seventh Block

-(MZLMonster *)setLizard {
    
    MZLMonster *lizard = [[MZLMonster alloc] init];
    lizard.monsterDamage = [self randomLower:1 Upper:3];
    lizard.monsterDefense = [self randomLower:0 Upper:0];
    lizard.monsterHealth = [self randomLower:2 Upper:3];
    lizard.monsterGold = [self randomLower:5 Upper:9];
    lizard.monsterImage = nil;
    lizard.monsterName = @"Lizard";
    
    return lizard;
    
}

-(MZLMonster *)setGnoll {
    
    MZLMonster *gnoll = [[MZLMonster alloc] init];
    gnoll.monsterDamage = [self randomLower:1 Upper:3];
    gnoll.monsterDefense = [self randomLower:0 Upper:0];
    gnoll.monsterHealth = [self randomLower:2 Upper:3];
    gnoll.monsterGold = [self randomLower:5 Upper:9];
    gnoll.monsterImage = nil;
    gnoll.monsterName = @"Gnoll";
    
    return gnoll;
    
}

// Eigth Block

-(MZLMonster *)setHarpy {
    
    MZLMonster *gnoll = [[MZLMonster alloc] init];
    gnoll.monsterDamage = [self randomLower:1 Upper:3];
    gnoll.monsterDefense = [self randomLower:0 Upper:0];
    gnoll.monsterHealth = [self randomLower:2 Upper:3];
    gnoll.monsterGold = [self randomLower:5 Upper:9];
    gnoll.monsterImage = nil;
    gnoll.monsterName = @"Harpy";
    
    return gnoll;
    
}

-(MZLMonster *)setGremlin {
    
    MZLMonster *gremlin = [[MZLMonster alloc] init];
    gremlin.monsterDamage = [self randomLower:1 Upper:3];
    gremlin.monsterDefense = [self randomLower:0 Upper:0];
    gremlin.monsterHealth = [self randomLower:2 Upper:3];
    gremlin.monsterGold = [self randomLower:5 Upper:9];
    gremlin.monsterImage = nil;
    gremlin.monsterName = @"Gremlin";
    
    return gremlin;
    
}

// Ninth Block

-(MZLMonster *)setGoblin {
    
    MZLMonster *goblin = [[MZLMonster alloc] init];
    goblin.monsterDamage = [self randomLower:1 Upper:3];
    goblin.monsterDefense = [self randomLower:0 Upper:0];
    goblin.monsterHealth = [self randomLower:2 Upper:3];
    goblin.monsterGold = [self randomLower:5 Upper:9];
    goblin.monsterImage = nil;
    goblin.monsterName = @"Goblin";
    
    return goblin;
    
}

-(MZLMonster *)setWillOWisp {
    
    MZLMonster *willowisp = [[MZLMonster alloc] init];
    willowisp.monsterDamage = [self randomLower:1 Upper:3];
    willowisp.monsterDefense = [self randomLower:0 Upper:0];
    willowisp.monsterHealth = [self randomLower:2 Upper:3];
    willowisp.monsterGold = [self randomLower:5 Upper:9];
    willowisp.monsterImage = nil;
    willowisp.monsterName = @"Will-O-Wisp";
    
    return willowisp;
    
}

// Tenth Block

-(MZLMonster *)setSkeleton {
    
    MZLMonster *skeleton = [[MZLMonster alloc] init];
    skeleton.monsterDamage = [self randomLower:1 Upper:3];
    skeleton.monsterDefense = [self randomLower:0 Upper:0];
    skeleton.monsterHealth = [self randomLower:2 Upper:3];
    skeleton.monsterGold = [self randomLower:5 Upper:9];
    skeleton.monsterImage = nil;
    skeleton.monsterName = @"Skeleton";
    
    return skeleton;
    
}

-(MZLMonster *)setZombie {
    
    MZLMonster *zombie = [[MZLMonster alloc] init];
    zombie.monsterDamage = [self randomLower:1 Upper:3];
    zombie.monsterDefense = [self randomLower:0 Upper:0];
    zombie.monsterHealth = [self randomLower:2 Upper:3];
    zombie.monsterGold = [self randomLower:5 Upper:9];
    zombie.monsterImage = nil;
    zombie.monsterName = @"Zombie";
    
    return zombie;
    
}

// Eleventh Block

-(MZLMonster *)setGhost {
    
    MZLMonster *ghost = [[MZLMonster alloc] init];
    ghost.monsterDamage = [self randomLower:1 Upper:3];
    ghost.monsterDefense = [self randomLower:0 Upper:0];
    ghost.monsterHealth = [self randomLower:2 Upper:3];
    ghost.monsterGold = [self randomLower:5 Upper:9];
    ghost.monsterImage = nil;
    ghost.monsterName = @"Ghost";
    
    return ghost;
    
}

-(MZLMonster *)setMummy {
    
    MZLMonster *mummy = [[MZLMonster alloc] init];
    mummy.monsterDamage = [self randomLower:1 Upper:3];
    mummy.monsterDefense = [self randomLower:0 Upper:0];
    mummy.monsterHealth = [self randomLower:2 Upper:3];
    mummy.monsterGold = [self randomLower:5 Upper:9];
    mummy.monsterImage = nil;
    mummy.monsterName = @"Mummy";
    
    return mummy;
    
}

// Twelvth Block

-(MZLMonster *)setHellhound {
    
    MZLMonster *hellhound = [[MZLMonster alloc] init];
    hellhound.monsterDamage = [self randomLower:1 Upper:3];
    hellhound.monsterDefense = [self randomLower:0 Upper:0];
    hellhound.monsterHealth = [self randomLower:2 Upper:3];
    hellhound.monsterGold = [self randomLower:5 Upper:9];
    hellhound.monsterImage = nil;
    hellhound.monsterName = @"Hellhound";
    
    return hellhound;
    
}

-(MZLMonster *)setOwlbear {
    
    MZLMonster *owlbear = [[MZLMonster alloc] init];
    owlbear.monsterDamage = [self randomLower:1 Upper:3];
    owlbear.monsterDefense = [self randomLower:0 Upper:0];
    owlbear.monsterHealth = [self randomLower:2 Upper:3];
    owlbear.monsterGold = [self randomLower:5 Upper:9];
    owlbear.monsterImage = nil;
    owlbear.monsterName = @"Owlbear";
    
    return owlbear;
    
}

// Thirteenth Block

-(MZLMonster *)setSasquatch {
    
    MZLMonster *sasquatch = [[MZLMonster alloc] init];
    sasquatch.monsterDamage = [self randomLower:1 Upper:3];
    sasquatch.monsterDefense = [self randomLower:0 Upper:0];
    sasquatch.monsterHealth = [self randomLower:2 Upper:3];
    sasquatch.monsterGold = [self randomLower:5 Upper:9];
    sasquatch.monsterImage = nil;
    sasquatch.monsterName = @"Sasquatch";
    
    return sasquatch;
    
}

-(MZLMonster *)setOrc {
    
    MZLMonster *orc = [[MZLMonster alloc] init];
    orc.monsterDamage = [self randomLower:1 Upper:3];
    orc.monsterDefense = [self randomLower:0 Upper:0];
    orc.monsterHealth = [self randomLower:2 Upper:3];
    orc.monsterGold = [self randomLower:5 Upper:9];
    orc.monsterImage = nil;
    orc.monsterName = @"Orc";
    
    return orc;
    
}

// Fourteenth Block

-(MZLMonster *)setCyclops {
    
    MZLMonster *cyclops = [[MZLMonster alloc] init];
    cyclops.monsterDamage = [self randomLower:1 Upper:3];
    cyclops.monsterDefense = [self randomLower:0 Upper:0];
    cyclops.monsterHealth = [self randomLower:2 Upper:3];
    cyclops.monsterGold = [self randomLower:5 Upper:9];
    cyclops.monsterImage = nil;
    cyclops.monsterName = @"Cyclops";
    
    return cyclops;
    
}

-(MZLMonster *)setOgre {
    
    MZLMonster *ogre = [[MZLMonster alloc] init];
    ogre.monsterDamage = [self randomLower:1 Upper:3];
    ogre.monsterDefense = [self randomLower:0 Upper:0];
    ogre.monsterHealth = [self randomLower:2 Upper:3];
    ogre.monsterGold = [self randomLower:5 Upper:9];
    ogre.monsterImage = nil;
    ogre.monsterName = @"Ogre";
    
    return ogre;
    
}

// Fifteenth Block

-(MZLMonster *)setLamia {
    
    MZLMonster *lamia = [[MZLMonster alloc] init];
    lamia.monsterDamage = [self randomLower:1 Upper:3];
    lamia.monsterDefense = [self randomLower:0 Upper:0];
    lamia.monsterHealth = [self randomLower:2 Upper:3];
    lamia.monsterGold = [self randomLower:5 Upper:9];
    lamia.monsterImage = nil;
    lamia.monsterName = @"Lamia";
    
    return lamia;
    
}

-(MZLMonster *)setReptilian {
    
    MZLMonster *reptilian = [[MZLMonster alloc] init];
    reptilian.monsterDamage = [self randomLower:1 Upper:3];
    reptilian.monsterDefense = [self randomLower:0 Upper:0];
    reptilian.monsterHealth = [self randomLower:2 Upper:3];
    reptilian.monsterGold = [self randomLower:5 Upper:9];
    reptilian.monsterImage = nil;
    reptilian.monsterName = @"Reptilian";
    
    return reptilian;
    
}

// Sixteenth Block


-(MZLMonster *)setSatyr {
    
    MZLMonster *satyr = [[MZLMonster alloc] init];
    satyr.monsterDamage = [self randomLower:1 Upper:3];
    satyr.monsterDefense = [self randomLower:0 Upper:0];
    satyr.monsterHealth = [self randomLower:2 Upper:3];
    satyr.monsterGold = [self randomLower:5 Upper:9];
    satyr.monsterImage = nil;
    satyr.monsterName = @"Satyr";
    
    return satyr;
    
}


-(MZLMonster *)setGhoul {
    
    MZLMonster *ghoul = [[MZLMonster alloc] init];
    ghoul.monsterDamage = [self randomLower:1 Upper:3];
    ghoul.monsterDefense = [self randomLower:0 Upper:0];
    ghoul.monsterHealth = [self randomLower:2 Upper:3];
    ghoul.monsterGold = [self randomLower:5 Upper:9];
    ghoul.monsterImage = nil;
    ghoul.monsterName = @"Ghoul";
    
    return ghoul;
    
}

// Seventeenth Block

-(MZLMonster *)setAbomination {
    
    MZLMonster *abomination = [[MZLMonster alloc] init];
    abomination.monsterDamage = [self randomLower:1 Upper:3];
    abomination.monsterDefense = [self randomLower:0 Upper:0];
    abomination.monsterHealth = [self randomLower:2 Upper:3];
    abomination.monsterGold = [self randomLower:5 Upper:9];
    abomination.monsterImage = nil;
    abomination.monsterName = @"Abomination";
    
    return abomination;
    
}


-(MZLMonster *)setWraith {
    
    MZLMonster *wraith = [[MZLMonster alloc] init];
    wraith.monsterDamage = [self randomLower:1 Upper:3];
    wraith.monsterDefense = [self randomLower:0 Upper:0];
    wraith.monsterHealth = [self randomLower:2 Upper:3];
    wraith.monsterGold = [self randomLower:5 Upper:9];
    wraith.monsterImage = nil;
    wraith.monsterName = @"Wraith";
    
    return wraith;
    
}

// Eighteenth Block

-(MZLMonster *)setGargoyle {
    
    MZLMonster *gargoyle = [[MZLMonster alloc] init];
    gargoyle.monsterDamage = [self randomLower:1 Upper:3];
    gargoyle.monsterDefense = [self randomLower:0 Upper:0];
    gargoyle.monsterHealth = [self randomLower:2 Upper:3];
    gargoyle.monsterGold = [self randomLower:5 Upper:9];
    gargoyle.monsterImage = nil;
    gargoyle.monsterName = @"Gargoyle";
    
    return gargoyle;
    
}

-(MZLMonster *)setShadow {
    
    MZLMonster *shadow = [[MZLMonster alloc] init];
    shadow.monsterDamage = [self randomLower:1 Upper:3];
    shadow.monsterDefense = [self randomLower:0 Upper:0];
    shadow.monsterHealth = [self randomLower:2 Upper:3];
    shadow.monsterGold = [self randomLower:5 Upper:9];
    shadow.monsterImage = nil;
    shadow.monsterName = @"Shadow";
    
    return shadow;
    
}

// Nineteenth Block

-(MZLMonster *)setGenie {
    
    MZLMonster *genie = [[MZLMonster alloc] init];
    genie.monsterDamage = [self randomLower:1 Upper:3];
    genie.monsterDefense = [self randomLower:0 Upper:0];
    genie.monsterHealth = [self randomLower:2 Upper:3];
    genie.monsterGold = [self randomLower:5 Upper:9];
    genie.monsterImage = nil;
    genie.monsterName = @"Shadow";
    
    return genie;
    
}

-(MZLMonster *)setMedusa {
    
    MZLMonster *medusa = [[MZLMonster alloc] init];
    medusa.monsterDamage = [self randomLower:1 Upper:3];
    medusa.monsterDefense = [self randomLower:0 Upper:0];
    medusa.monsterHealth = [self randomLower:2 Upper:3];
    medusa.monsterGold = [self randomLower:5 Upper:9];
    medusa.monsterImage = nil;
    medusa.monsterName = @"Medusa";
    
    return medusa;
    
}

// 20th block

-(MZLMonster *)setGolem {
    
    MZLMonster *golem = [[MZLMonster alloc] init];
    golem.monsterDamage = [self randomLower:1 Upper:3];
    golem.monsterDefense = [self randomLower:0 Upper:0];
    golem.monsterHealth = [self randomLower:2 Upper:3];
    golem.monsterGold = [self randomLower:5 Upper:9];
    golem.monsterImage = nil;
    golem.monsterName = @"Golem";
    
    return golem;
    
}

-(MZLMonster *)setVampire {
    
    MZLMonster *vampire = [[MZLMonster alloc] init];
    vampire.monsterDamage = [self randomLower:1 Upper:3];
    vampire.monsterDefense = [self randomLower:0 Upper:0];
    vampire.monsterHealth = [self randomLower:2 Upper:3];
    vampire.monsterGold = [self randomLower:5 Upper:9];
    vampire.monsterImage = nil;
    vampire.monsterName = @"Vampire";
    
    return vampire;

}

// Twenty First Block

-(MZLMonster *)setDragon {
    
    MZLMonster *dragon = [[MZLMonster alloc] init];
    dragon.monsterDamage = [self randomLower:1 Upper:3];
    dragon.monsterDefense = [self randomLower:0 Upper:0];
    dragon.monsterHealth = [self randomLower:2 Upper:3];
    dragon.monsterGold = [self randomLower:5 Upper:9];
    dragon.monsterImage = nil;
    dragon.monsterName = @"Dragon";
    
    return dragon;
    
}

-(MZLMonster *)setHydra {
    
    MZLMonster *hydra = [[MZLMonster alloc] init];
    hydra.monsterDamage = [self randomLower:1 Upper:3];
    hydra.monsterDefense = [self randomLower:0 Upper:0];
    hydra.monsterHealth = [self randomLower:2 Upper:3];
    hydra.monsterGold = [self randomLower:5 Upper:9];
    hydra.monsterImage = nil;
    hydra.monsterName = @"Hydra";
    
    return hydra;
    
}

// Twenty Second Block

-(MZLMonster *)setSuccubus {
    
    MZLMonster *succubus = [[MZLMonster alloc] init];
    succubus.monsterDamage = [self randomLower:1 Upper:3];
    succubus.monsterDefense = [self randomLower:0 Upper:0];
    succubus.monsterHealth = [self randomLower:2 Upper:3];
    succubus.monsterGold = [self randomLower:5 Upper:9];
    succubus.monsterImage = nil;
    succubus.monsterName = @"Succubus";
    
    return succubus;
    
}

-(MZLMonster *)setIncubus {
    
    MZLMonster *incubus = [[MZLMonster alloc] init];
    incubus.monsterDamage = [self randomLower:1 Upper:3];
    incubus.monsterDefense = [self randomLower:0 Upper:0];
    incubus.monsterHealth = [self randomLower:2 Upper:3];
    incubus.monsterGold = [self randomLower:5 Upper:9];
    incubus.monsterImage = nil;
    incubus.monsterName = @"Incubus";
    
    return incubus;
    
}

// Twenty Third Block

-(MZLMonster *)setEldritchHorror {
    
    MZLMonster *eldritchHorror = [[MZLMonster alloc] init];
    eldritchHorror.monsterDamage = [self randomLower:1 Upper:3];
    eldritchHorror.monsterDefense = [self randomLower:0 Upper:0];
    eldritchHorror.monsterHealth = [self randomLower:2 Upper:3];
    eldritchHorror.monsterGold = [self randomLower:5 Upper:9];
    eldritchHorror.monsterImage = nil;
    eldritchHorror.monsterName = @"Eldritch Horror";
    
    return eldritchHorror;
    
}

-(MZLMonster *)setWitch {
    
    MZLMonster *witch = [[MZLMonster alloc] init];
    witch.monsterDamage = [self randomLower:1 Upper:3];
    witch.monsterDefense = [self randomLower:0 Upper:0];
    witch.monsterHealth = [self randomLower:2 Upper:3];
    witch.monsterGold = [self randomLower:5 Upper:9];
    witch.monsterImage = nil;
    witch.monsterName = @"Witch";
    
    return witch;
    
}

// Twenty Fourth Block

-(MZLMonster *)setMinotaur {
    
    MZLMonster *minotaur = [[MZLMonster alloc] init];
    minotaur.monsterDamage = [self randomLower:1 Upper:3];
    minotaur.monsterDefense = [self randomLower:0 Upper:0];
    minotaur.monsterHealth = [self randomLower:2 Upper:3];
    minotaur.monsterGold = [self randomLower:5 Upper:9];
    minotaur.monsterImage = nil;
    minotaur.monsterName = @"Minotaur";
    
    return minotaur;
    
}

-(MZLMonster *)setManticore {
    
    MZLMonster *manticore = [[MZLMonster alloc] init];
    manticore.monsterDamage = [self randomLower:1 Upper:3];
    manticore.monsterDefense = [self randomLower:0 Upper:0];
    manticore.monsterHealth = [self randomLower:2 Upper:3];
    manticore.monsterGold = [self randomLower:5 Upper:9];
    manticore.monsterImage = nil;
    manticore.monsterName = @"Manticore";
    
    return manticore;
    
}

-(MZLMonster *)setChimera {
    
    MZLMonster *chimera = [[MZLMonster alloc] init];
    chimera.monsterDamage = [self randomLower:1 Upper:3];
    chimera.monsterDefense = [self randomLower:0 Upper:0];
    chimera.monsterHealth = [self randomLower:2 Upper:3];
    chimera.monsterGold = [self randomLower:5 Upper:9];
    chimera.monsterImage = nil;
    chimera.monsterName = @"Chimera";
    
    return chimera;
    
}

// Twenty Fifth Block

-(MZLMonster *)setDemon {
    
    MZLMonster *demon = [[MZLMonster alloc] init];
    demon.monsterDamage = [self randomLower:1 Upper:3];
    demon.monsterDefense = [self randomLower:0 Upper:0];
    demon.monsterHealth = [self randomLower:2 Upper:3];
    demon.monsterGold = [self randomLower:5 Upper:9];
    demon.monsterImage = nil;
    demon.monsterName = @"Demon";
    
    return demon;
    
}

-(MZLMonster *)setLich {
    
    MZLMonster *lich = [[MZLMonster alloc] init];
    lich.monsterDamage = [self randomLower:1 Upper:3];
    lich.monsterDefense = [self randomLower:0 Upper:0];
    lich.monsterHealth = [self randomLower:2 Upper:3];
    lich.monsterGold = [self randomLower:5 Upper:9];
    lich.monsterImage = nil;
    lich.monsterName = @"Lich";
    
    return lich;
    
}

-(MZLMonster *)setDeathKnight {
    
    MZLMonster *deathKnight = [[MZLMonster alloc] init];
    deathKnight.monsterDamage = [self randomLower:1 Upper:3];
    deathKnight.monsterDefense = [self randomLower:0 Upper:0];
    deathKnight.monsterHealth = [self randomLower:2 Upper:3];
    deathKnight.monsterGold = [self randomLower:5 Upper:9];
    deathKnight.monsterImage = nil;
    deathKnight.monsterName = @"Death Knight";
    
    return deathKnight;
    
}

-(int)randomLower:(int)lower Upper:(int)upper {
    
    return (int)lower + arc4random() % (upper-lower+1);
    
}

-(NSMutableArray *)monsterBlockNewGame {
    
    _monsterBlock = [[NSMutableArray alloc] init];
    
    for(int i = 0; i < 3; i++){
    
        NSArray *randomize = [[NSArray alloc] initWithObjects:
                          [self setRat],
                          [self setSpider],
                          [self setBat],
                          nil];
    
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
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setRat],
                                  [self setSpider],
                                  [self setBat],
                                  [self setSnake],
                                  [self setGiantAnt],
                                  nil];
            
            
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];

            }
            
            break;
        }
        case 2: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setSnake],
                                  [self setGiantAnt],
                                  [self setCentipede],
                                  [self setGiantCrab],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];
            }
            
            break;
        }
            
        case 3: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setCentipede],
                                  [self setGiantCrab],
                                  [self setScorpion],
                                  [self setWasp],
                                  nil];
            
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 4: {
            
            
            for(int i = 0; i < 3; i++){
                
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setScorpion],
                                  [self setWasp],
                                  [self setBee],
                                  [self setSlime],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 5: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setBee],
                                  [self setSlime],
                                  [self setBear],
                                  [self setCockatrice],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 6: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setBear],
                                  [self setCockatrice],
                                  [self setLizard],
                                  [self setGnoll],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
        
        case 7: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setLizard],
                                  [self setGnoll],
                                  [self setHarpy],
                                  [self setGremlin],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 8: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setHarpy],
                                  [self setGremlin],
                                  [self setGoblin],
                                  [self setWillOWisp],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 9: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setGoblin],
                                  [self setWillOWisp],
                                  [self setSkeleton],
                                  [self setZombie],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 10: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setSkeleton],
                                  [self setZombie],
                                  [self setGhost],
                                  [self setMummy],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 11: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setGhost],
                                  [self setMummy],
                                  [self setHellhound],
                                  [self setOwlbear],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 12: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setHellhound],
                                  [self setOwlbear],
                                  [self setSasquatch],
                                  [self setOrc],
                                  [self setCyclops],
                                  [self setOgre],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 13: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setCyclops],
                                  [self setOgre],
                                  [self setLamia],
                                  [self setReptilian],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 14: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setLamia],
                                  [self setReptilian],
                                  [self setSatyr],
                                  [self setGhoul],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 15: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setSatyr],
                                  [self setGhoul],
                                  [self setAbomination],
                                  [self setWraith],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 16: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setAbomination],
                                  [self setWraith],
                                  [self setGargoyle],
                                  [self setShadow],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 17: {
            
            for(int i = 0; i < 3; i++){
                
                NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setGargoyle],
                                  [self setShadow],
                                  [self setGenie],
                                  [self setMedusa],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 18: {
            
            for(int i = 0; i < 3; i++){
            
                NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setGenie],
                                  [self setMedusa],
                                  [self setGolem],
                                  [self setVampire],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 19: {
          
            for(int i = 0; i < 3; i++){
            
                NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setGolem],
                                  [self setVampire],
                                  [self setDragon],
                                  [self setHydra],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
        
        case 20: {
            
            for(int i = 0; i < 3; i++){
            
                NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setDragon],
                                  [self setHydra],
                                  [self setSuccubus],
                                  [self setIncubus],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 21: {
            
        for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setSuccubus],
                                  [self setIncubus],
                                  [self setEldritchHorror],
                                  [self setWitch],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 22: {
            
            for(int i = 0; i < 3; i++){
            
                NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setEldritchHorror],
                                  [self setWitch],
                                  [self setMinotaur],
                                  [self setManticore],
                                  [self setChimera],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 23: {
            
        for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setManticore],
                                  [self setChimera],
                                  [self setMinotaur],
                                  nil];
            
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        case 24: {
            
            for(int i = 0; i < 3; i++){
            
            NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                  [self setDemon],
                                  [self setLich],
                                  [self setDeathKnight],
                                  nil];
                
                NSUInteger randomIndex = arc4random() % [randomize count];
                
                MZLMonster *chosenMonster = [[MZLMonster alloc] initMonsterWithCopy:randomize[randomIndex]];
                
                [self.monsterBlock addObject:chosenMonster];            }
            
            break;
        }
            
        default:
            
            NSLog(@"If you reach here, there is an error");
            
            for(int i = 0; i < 3; i++){
                
                NSArray *randomize = [[NSMutableArray alloc] initWithObjects:
                                      [self setDemon],
                                      [self setLich],
                                      [self setDeathKnight],
                                      nil];
                
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
