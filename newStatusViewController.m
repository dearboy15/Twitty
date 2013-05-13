//
//  newStatusViewController.m
//  Twitty
//
//  Created by lamungkun sarunyoo on 2013/05/13.
//  Copyright (c) 2013年 dearboy. All rights reserved.
//

#import "newStatusViewController.h"

@interface newStatusViewController ()

@end

@implementation newStatusViewController

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
    _statusTextView.keyboardType = UIKeyboardTypeAlphabet;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
