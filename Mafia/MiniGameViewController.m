//
//  MiniGameViewController.m
//  Mafia
//
//  Created by Steve on 2015-09-02.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "MiniGameViewController.h"

@interface MiniGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *currentPlayerName;
@property (weak, nonatomic) IBOutlet UITextField *answerTextField;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentLifeLabel;

@property (nonatomic) int xNumber;
@property (nonatomic) int yNumber;

- (IBAction)submitBtn:(id)sender;

@end

@implementation MiniGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@ and if it is mafia", self.currentPlayer.playerName);
    
    self.currentPlayerName.text = self.currentPlayer.playerName;
    self.currentLifeLabel.text = [NSString stringWithFormat:@"Player Current Life: %i", self.currentPlayer.currentLife];
    
    [self game];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [self game];
    self.answerTextField.text = @"";
    
}

- (void)game {
    self.xNumber = arc4random()%10 + 1;
    self.yNumber = arc4random()%10 + 1;
    
    self.questionLabel.text = [NSString stringWithFormat:@"%i + %i", self.xNumber, self.yNumber];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self checkAnswerAndLife]) {
        return YES;
    } else {
        self.currentPlayer.currentLife -= 1;
        self.currentLifeLabel.text = [NSString stringWithFormat:@"Player Current Life: %i", self.currentPlayer.currentLife];
        return NO;
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"submitAnswer"]) {
        
        
        
        
    }
    
    
    
}

- (BOOL)checkAnswerAndLife {
    if (self.currentPlayer.currentLife > 0 && [self.answerTextField.text intValue] == self.xNumber + self.yNumber) {
        return YES;
    } else {
        return NO;
    }
}

- (IBAction)submitBtn:(id)sender {
    
}
@end
