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

@property (strong, nonatomic) Villager* currentVillager;

@end

@implementation VillagerChoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *btns = @[self.btn1, self.btn2, self.btn3, self.btn4, self.btn5];
    
    for (int i = 0; i < [self.villagers count]; i++) {
        Villager *villager = self.villagers[i];
        
        UIButton *button = (UIButton *)btns[i];
        
        [button setTitle:villager.villagerName forState:UIControlStateNormal];
        if (villager.isDead) {
            button.alpha = 0.2;
            button.enabled = NO;
            
        }
    }
}

-(void)viewWillAppear:(BOOL)animated {

}

- (void)setVillagersWithArray:(NSMutableArray *)array {
    self.villagers = [array copy];
}

-(void)handleButtonForButtonIndex:(int)buttonIndex sender:(UIButton *)btn {
    self.currentVillager = self.villagers[ buttonIndex ];
    
    if (self.currentVillager.isMafiaOrSheriff){
        // Player wins
        if (self.currentPlayer.isMafia) {
            UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:@"YAY"
                                                               message:@"You just killed the sheriff!"
                                                              delegate:nil
                                                     cancelButtonTitle:@"OK"
                                                     otherButtonTitles:nil];
            [alerView show];
        } else {
            UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:@"YAY!"
                                                               message:@"You just killed the Mafia!"
                                                              delegate:nil
                                                     cancelButtonTitle:@"OK"
                                                     otherButtonTitles:nil];
            [alerView show];
        }
        
    }else{
        // Player keeps playing
//        btn.hidden = YES;
        self.currentVillager.isDead = YES;
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}

- (IBAction)btn1:(id)sender {
    [self handleButtonForButtonIndex:0 sender:self.btn1];
}
- (IBAction)btn2:(id)sender {
    [self handleButtonForButtonIndex:1 sender:self.btn2];
}
- (IBAction)btn3:(id)sender {
    [self handleButtonForButtonIndex:2 sender:self.btn3];
}
- (IBAction)btn4:(id)sender {
    [self handleButtonForButtonIndex:3 sender:self.btn4];
}
- (IBAction)btn5:(id)sender {
    [self handleButtonForButtonIndex:4 sender:self.btn5];
}

@end
