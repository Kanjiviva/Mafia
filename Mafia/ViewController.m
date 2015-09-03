//
//  ViewController.m
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
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
        
        ((MiniGameViewController *)segue.destinationViewController).currentPlayer = player;
        
        NSLog(@"%@", player.playerName);
        
    } else if ([segue.identifier isEqualToString:@"isSheriff"]) {
        
        Player *player = [[Player alloc] initWithName:self.playerNameTextField.text isMafia:NO];
        
        ((MiniGameViewController *)segue.destinationViewController).currentPlayer = player;
        
        NSLog(@"%@", player.playerName);
        
    }
    
    
    
}
@end
