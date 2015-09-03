//
//  Villager.m
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Villager.h"

@implementation Villager

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _isDead = NO;
        _villagerName = name;
        _isMafiaOrSherriff = NO;
    }
    return self;
}

@end
