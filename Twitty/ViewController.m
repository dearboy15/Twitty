//
//  ViewController.m
//  Twitty
//
//  Created by dearboy on 5/9/13.
//  Copyright (c) 2013 dearboy. All rights reserved.
//

#import "ViewController.h"
#import "SBJson.h"

@interface ViewController ()
@property ( nonatomic) IBOutlet UITextField *usernameTextFiel;
@property ( nonatomic) IBOutlet UITextField *passwordTextField;

@end
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)login:(id)sender{
    NSLog(@"%@",_usernameTextFiel.text);
    NSLog(@"%@",_passwordTextField.text);
    
    NSURL *aUrl = [NSURL URLWithString:@"http://www.apple.com/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:aUrl
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    NSURLConnection *connection= [[NSURLConnection alloc] initWithRequest:request
                                                                 delegate:self];
    
    [request setHTTPMethod:@"POST"];
    NSString *postString = @"company=Locassa&quality=AWESOME!";
    [request setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    
}

@end
