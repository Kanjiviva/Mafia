//
//  VillagerChoiceViewController.m
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "VillagerChoiceViewController.h"
#import "Villager.h"

@interface VillagerChoiceViewController ()

@property (strong, nonatomic) NSArray *villagers;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
- (IBAction)btn1:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
- (IBAction)btn2:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
- (IBAction)btn3:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
- (IBAction)btn4:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
- (IBAction)btn5:(id)sender;

@end

@implementation VillagerChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *btns = @[self.btn1, self.btn2, self.btn3, self.btn4, self.btn5];
    
    for (int i = 0; i < [self.villagers count]; i++) {
        Villager *villager = self.villagers[i];
        
        [((UIButton *)btns[i]) setTitle:villager.villagerName forState:UIControlStateNormal];
        
    }
//    
//    Villager *villager = self.villagers[0];
//    
//    self.btn1.titleLabel.text = villager.villagerName;
    
    
    
}

- (void)setVillagersWithArray:(NSMutableArray *)array {
    self.villagers = [array copy];
}

- (IBAction)btn1:(id)sender {
    
    
    
}
- (IBAction)btn2:(id)sender {
}
- (IBAction)btn3:(id)sender {
}
- (IBAction)btn4:(id)sender {
}
- (IBAction)btn5:(id)sender {
}
@end
