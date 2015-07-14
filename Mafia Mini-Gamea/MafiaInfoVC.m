//
//  MafiaInfoVC.m
//  Mafia Mini-Gamea
//
//  Created by Cody Zazulak on 2015-07-13.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "MafiaInfoVC.h"
#import "MafiaMiniGameVC.h"

@interface MafiaInfoVC ()

@property (weak, nonatomic) IBOutlet UILabel *innocentPeopleLabel;
@property int lives;

@end

@implementation MafiaInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MafiaMiniGameVC *vc = [[MafiaMiniGameVC alloc] init];
    
//    [self.innocentPeopleLabel setText:[NSString stringWithFormat:@"%i Innocent People Left!", self.lives]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
