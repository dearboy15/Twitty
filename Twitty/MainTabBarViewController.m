//
//  MainTabBarViewController.m
//  Twitty
//
//  Created by lamungkun sarunyoo on 2013/05/12.
//  Copyright (c) 2013年 dearboy. All rights reserved.
//

#import "MainTabBarViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self.viewControllers objectAtIndex:0] setTitle:NSLocalizedString(@"Home", nil)];
    [[self.viewControllers objectAtIndex:1] setTitle:NSLocalizedString(@"Friends", nil)];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
