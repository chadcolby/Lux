//
//  CCCommunitiesViewController.m
//  Lux
//
//  Created by Chad D Colby on 4/7/14.
//  Copyright (c) 2014 Byte Meets World. All rights reserved.
//

#import "CCCommunitiesViewController.h"

@interface CCCommunitiesViewController ()

@end

@implementation CCCommunitiesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITabBarItem *selectedItem = [self.tabBarController.tabBar.items objectAtIndex:1];
    UIImage *selectedImage = [UIImage imageNamed:@"solidGroup"];
    selectedItem.selectedImage = selectedImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

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
