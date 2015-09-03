//
//  Player.m
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Player.h"

@interface Player ()
@property (assign, nonatomic) BOOL isMafia;

@end

@implementation Player

- (instancetype)initWithName:(NSString *)playerName isMafia:(BOOL)isMafia;
{
    self = [super init];
    if (self) {
        _playerName = playerName;
        _isMafia = isMafia;
        _currentLife = 3;
    }
    return self;
}

//- (BOOL)isMafia {
//    
//    
//    return self.isMafia;
//    
//}

@end
