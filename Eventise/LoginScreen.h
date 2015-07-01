//
//  LoginScreen.h
//  Eventise
//
//  Created by Karan Khatter on 6/19/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface LoginScreen : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Username;
@property (weak, nonatomic) IBOutlet UITextField *Password;
- (IBAction)TapScreenGesture:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UILabel *DontHaveAccountLabel;
@property (weak, nonatomic) IBOutlet UIButton *SignUpLabel;
- (IBAction)Login:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *LoginButton;
@property (weak, nonatomic) IBOutlet UILabel *ErrorMessage;


@end
