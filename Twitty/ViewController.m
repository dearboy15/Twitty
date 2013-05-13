//
//  ViewController.m
//  Twitty
//
//  Created by dearboy on 5/9/13.
//  Copyright (c) 2013 dearboy. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property ( weak, nonatomic) IBOutlet UITextField *usernameTextFiel;
@property ( weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property ( weak, nonatomic) IBOutlet UITextView *statusTextView;
@property ( strong, nonatomic) NSMutableData *data;
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
    [self.view endEditing:YES];
    NSLog(@"%@",_usernameTextFiel.text);
    NSLog(@"%@",_passwordTextField.text);
   
    NSURL *aUrl = [NSURL URLWithString:@"http://localhost:3000/logins"];
   
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:aUrl
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
     // Set Method
    [request setHTTPMethod:@"POST"];
    NSString *postString = [NSString stringWithFormat:@"username=%@&password=%@",_usernameTextFiel.text,_passwordTextField.text];
    //NSLog(@"%@",postString);

    //@"username=sarunyoo&password=1234";
    [request setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLConnection *connection= [[NSURLConnection alloc] initWithRequest:request
                                                                 delegate:self];
    [connection start];
    self.data =[[NSMutableData alloc] init];
    //UIViewController *uiviewContoller =[[UIViewController alloc] init];
    //UINavigationController *nv
    UITabBarController *tabBarController = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarIdentifer"];
    
    tabBarController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:tabBarController animated:YES completion:nil];
//    [self performSegueWithIdentifier:@"TabBarIdentifer" sender:self];
    
    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"Received Respons");
    [self.data setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)d {

    NSLog(@"Received Data");
    [self.data appendData:d];

    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", @"")
                                 message:[error localizedDescription]
                                delegate:nil
                       cancelButtonTitle:NSLocalizedString(@"OK", @"")
                       otherButtonTitles:nil] show];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSString *responseText = [[NSString alloc] initWithData:self.data encoding:NSUTF8StringEncoding];
    
    // Do anything you want with it
   NSLog(@"Data --> %@",responseText);
    _statusTextView.text =responseText;
    
}
- (void)parser:(SBJsonStreamParser *)parser foundArray:(NSArray *)array{
    NSLog(@"found Json Array");
}
- (void)parser:(SBJsonStreamParser *)parser foundObject:(NSDictionary *)dict{
     NSLog(@"found Json Object");
}
@end
