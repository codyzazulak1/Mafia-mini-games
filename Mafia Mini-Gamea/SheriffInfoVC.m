//
//  SheriffInfoVC.m
//  Mafia Mini-Gamea
//
//  Created by Cody Zazulak on 2015-07-13.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "SheriffInfoVC.h"
#import "SheriffMiniGameVC.h"

@interface SheriffInfoVC ()

@property (weak, nonatomic) IBOutlet UILabel *mafiaMembersLabel;
@property int lives;

@end

@implementation SheriffInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SheriffMiniGameVC *vc = [[SheriffMiniGameVC alloc] init];
    
//    [self.mafiaMembersLabel setText:[NSString stringWithFormat:@"%i Innocent People Left!", self.lives]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
