//
//  MafiaMiniGameVC.m
//  Mafia Mini-Gamea
//
//  Created by Cody Zazulak on 2015-07-13.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "MafiaMiniGameVC.h"
#import "MafiaInfoVC.h"
#include <stdlib.h>

@interface MafiaMiniGameVC ()

@property (weak, nonatomic) IBOutlet UITextField *pickedNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *winOrLoseLabel;

@end

@implementation MafiaMiniGameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.winOrLoseLabel setHidden:YES];
    self.lives = 3;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"gameToMafiaSegue"]) {
        MafiaInfoVC *mafiaVC = (MafiaInfoVC *)segue.destinationViewController;
        mafiaVC.lives = _lives;
    }
}

- (IBAction)submitButtonPressed:(UIButton *)sender {
    int target = arc4random_uniform(5)+1;
    
    int guess = [self.pickedNumberTextField.text intValue];
    
    if (guess == target) {
        [self.winOrLoseLabel setText:[NSString stringWithFormat:@"Guess: %i, Goal: %i, Winner!", guess, target]];
        [self.winOrLoseLabel setHidden:NO];
        --self.lives;
        NSLog(@"Lives: %d", self.lives);
        [self performSegueWithIdentifier:@"gameToMafiaSegue" sender:self];
    } else {
        [self.winOrLoseLabel setText:[NSString stringWithFormat:@"Guess: %i, Goal: %i, Wrong!", guess, target]];
        [self.winOrLoseLabel setHidden:NO];
    }
    
}

@end
