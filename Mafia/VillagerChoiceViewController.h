//
//  VillagerChoiceViewController.h
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface VillagerChoiceViewController : UIViewController

@property (strong, nonatomic) Player *currentPlayer;

- (void)setVillagersWithArray:(NSMutableArray *)array;

@end
