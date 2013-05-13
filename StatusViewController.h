//
//  StatusViewController.h
//  Twitty
//
//  Created by lamungkun sarunyoo on 2013/05/10.
//  Copyright (c) 2013年 dearboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatusViewController : UITableViewController
@property (nonatomic,strong) NSArray *profileImage;
@property (nonatomic,strong) NSArray *status;
@property (nonatomic,strong) NSArray *username;
@property (nonatomic,strong) NSArray *datetime;

-(IBAction)returned:(UIStoryboardSegue *)segue;
@end
