//
//  StatusTableViewCell.h
//  Twitty
//
//  Created by lamungkun sarunyoo on 2013/05/13.
//  Copyright (c) 2013年 dearboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatusTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *profilePic;
@property (strong, nonatomic) IBOutlet UILabel *status;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *datetime;

@end
