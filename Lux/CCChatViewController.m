//
//  CCChatViewController.m
//  Lux
//
//  Created by Chad D Colby on 4/8/14.
//  Copyright (c) 2014 Byte Meets World. All rights reserved.
//

#import "CCChatViewController.h"

@interface CCChatViewController ()

@property (nonatomic) BOOL inBeaconRange;

@end

@implementation CCChatViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITabBarItem *selectedItem = [self.tabBarController.tabBar.items objectAtIndex:3];
    UIImage *selectedImage = [UIImage imageNamed:@"solidChat"];
    selectedItem.selectedImage = selectedImage;

//    self.inBeaconRange = false;
//    
//    if (self.inBeaconRange) {
//        NSLog(@"In the shop!");
//    } else {
//        [[self.tabBarController.tabBar.items lastObject] setEnabled:NO];
//    }
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
