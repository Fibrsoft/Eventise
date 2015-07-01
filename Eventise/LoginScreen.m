//
//  LoginScreen.m
//  Eventise
//
//  Created by Karan Khatter on 6/19/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import "LoginScreen.h"

@interface LoginScreen ()

@end

@implementation LoginScreen

- (void)viewDidLoad {
    [super viewDidLoad];    
    
    _NameLabel.adjustsFontSizeToFitWidth = YES;
    _DontHaveAccountLabel.adjustsFontSizeToFitWidth = YES;
    _SignUpLabel.titleLabel.adjustsFontSizeToFitWidth = YES;
    _ErrorMessage.adjustsFontSizeToFitWidth = YES;
    _LoginButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    _LoginButton.layer.cornerRadius = 5;
    
    _Username.layer.borderColor = (__bridge CGColorRef)([UIColor whiteColor]);
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)TapScreenGesture:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)Login:(id)sender {
    if (_Username.text.length > 0 && _Password.text.length > 0)
    {
        [PFUser logInWithUsernameInBackground:_Username.text password:_Password.text
                                        block:^(PFUser *user, NSError *error) {
                                            if (user) {
                                                //User was successful and is a host/employer
                                                if([user[@"AppControl"]  isEqual: @"1"]) {
                                                    [self performSegueWithIdentifier:@"hostSegue" sender:self];
                                                }
                                            } else {
                                                _ErrorMessage.text = [error localizedDescription];
                                            }
                                        }];
}
    else
    {
        _ErrorMessage.text = @"Please enter a valid username and password";
    }
}
@end
