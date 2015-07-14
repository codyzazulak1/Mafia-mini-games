//
//  SheriffMiniGameVC.m
//  Mafia Mini-Gamea
//
//  Created by Cody Zazulak on 2015-07-13.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "SheriffMiniGameVC.h"
#import "SheriffInfoVC.h"
#include <stdlib.h>

@interface SheriffMiniGameVC ()

@property (weak, nonatomic) IBOutlet UITextField *pickedNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *winOrLoseLabel;

@end

@implementation SheriffMiniGameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lives = 3;
    [self.winOrLoseLabel setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"gameToSheriffSegue"]) {
        SheriffInfoVC *sheriffVC = (SheriffInfoVC *)segue.destinationViewController;
        sheriffVC.lives = _lives;
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
        [self performSegueWithIdentifier:@"gameToSheriffSegue" sender:self];
    } else {
        [self.winOrLoseLabel setText:[NSString stringWithFormat:@"Guess: %i, Goal: %i, Wrong!", guess, target]];
        [self.winOrLoseLabel setHidden:NO];
    }
    
}

@end
