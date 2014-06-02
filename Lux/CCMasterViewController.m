//
//  CCMasterViewController.m
//  Lux
//
//  Created by Chad D Colby on 4/7/14.
//  Copyright (c) 2014 Byte Meets World. All rights reserved.
//

#import "CCMasterViewController.h"

@interface CCMasterViewController ()

@property (strong, nonatomic) NSString *imageName;

@end

@implementation CCMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setUpBackground];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (void)setUpBackground
{
    if ([[UIScreen mainScreen] bounds].size.height > 500) {
        self.imageName = @"bigBackground";
    } else {
        self.imageName = @"smallBackground";
    }
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:self.imageName]];
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];

    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabBarBackground"]];    
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
