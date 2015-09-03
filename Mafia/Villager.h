//
//  Villager.h
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Villager : NSObject

@property (assign, nonatomic) BOOL isDead;
@property (strong, nonatomic) NSString *villagerName;

- (instancetype)initWithName:(NSString *)name;

@end
