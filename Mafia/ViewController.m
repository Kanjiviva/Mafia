//
//  ViewController.m
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "Villager.h"
#import "MiniGameViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *playerNameTextField;
- (IBAction)buttonPressed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([self.playerNameTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"isMafia"]) {
        Player *player = [[Player alloc] initWithName:self.playerNameTextField.text isMafia:YES];
        
        MiniGameViewController * miniGameVC = segue.destinationViewController;
        miniGameVC.currentPlayer = player;
        miniGameVC.villagers = [self createVillagers];
        
        NSLog(@"%@", player.playerName);
        
    } else if ([segue.identifier isEqualToString:@"isSheriff"]) {
        
        Player *player = [[Player alloc] initWithName:self.playerNameTextField.text isMafia:NO];
        
        ((MiniGameViewController *)segue.destinationViewController).currentPlayer = player;
        
        NSLog(@"%@", player.playerName);
        
    }
    
    
    
}


- (NSMutableArray *)createVillagers {
    
    NSMutableArray *villagersArray = [NSMutableArray new];
    
    for (int i = 0; i < 5; i++) {
        Villager *villager = [[Villager alloc] initWithName:[NSString stringWithFormat:@"Villager %d", i + 1]];
        
        [villagersArray addObject:villager];
    }
    
    int randomVillager = arc4random_uniform(5);
    ((Villager*)villagersArray[ randomVillager ]).isMafiaOrSherriff = YES;
    
    NSLog(@"Villager number %d is the Mafia/Sherriff (Index=%d)", randomVillager+1, randomVillager );

    return villagersArray;
}

@end
