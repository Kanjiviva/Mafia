//
//  Player.h
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (strong, nonatomic) NSString *playerName;
@property (assign, nonatomic) int currentLife;

- (instancetype)initWithName:(NSString *)playerName isMafia:(BOOL)isMafia;
- (BOOL)isMafia;

@end
