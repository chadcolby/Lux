//
//  CCLuxCoffeeViewController.m
//  Lux
//
//  Created by Chad D Colby on 4/7/14.
//  Copyright (c) 2014 Byte Meets World. All rights reserved.
//

#import "CCLuxCoffeeViewController.h"

@interface CCLuxCoffeeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentSelect;
@property (nonatomic) BOOL inBeaconRange;

@end

@implementation CCLuxCoffeeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.inBeaconRange = false;
    
    if (self.inBeaconRange) {
        NSLog(@"In the shop!");
    } else {
        [[self.tabBarController.tabBar.items lastObject] setEnabled:NO];
    }

    [self createInitialSetUp];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (void)createInitialSetUp
{
    UITabBarItem *selectedItem = [self.tabBarController.tabBar.items objectAtIndex:0];
    UIImage *selectedImage = [UIImage imageNamed:@"solidCoffee"];
    selectedItem.selectedImage = selectedImage;
    self.welcomeLabel.text = @"We are a group of individuals that are passionate about coffee, its impact on the world, and brewing it properly to draw out the unique flavors in each cup";
    self.segmentSelect.tintColor = [UIColor whiteColor];
    NSArray *segementArray = [NSArray arrayWithObjects:@"About Us", @"Our Coffees", @"Connect", nil];
    [self.segmentSelect removeAllSegments];
    for (NSInteger i = 0; i < segementArray.count; i++) {
        [self.segmentSelect insertSegmentWithTitle:[segementArray objectAtIndex:i] atIndex:i animated:NO];
    }
    [self.segmentSelect setSelectedSegmentIndex:0];
    
    [self.segmentSelect addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)segmentChanged:(NSInteger)sender
{
    sender = [self.segmentSelect selectedSegmentIndex];
    switch (sender) {
        case 0:
            self.welcomeLabel.hidden = NO;
            break;
        case 1:
            self.welcomeLabel.hidden = YES;
            
            break;
        case 2:
            self.welcomeLabel.hidden = YES;
            break;
        default:
            break;
    }
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
