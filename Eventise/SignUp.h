//
//  SignUp.h
//  Eventise
//
//  Created by Karan Khatter on 6/19/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface SignUp : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *FirstName;
@property (weak, nonatomic) IBOutlet UITextField *LastName;
@property (weak, nonatomic) IBOutlet UITextField *Age;
@property (weak, nonatomic) IBOutlet UITextField *Username;
@property (weak, nonatomic) IBOutlet UITextField *Password;
@property (weak, nonatomic) IBOutlet UITextField *RetypePassword;
@property (weak, nonatomic) IBOutlet UISegmentedControl *AppControl;
- (IBAction)SignUp:(id)sender;
- (IBAction)SignUpTapGesture:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *FirstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *LastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *AgeLabel;
@property (weak, nonatomic) IBOutlet UILabel *UsernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *PasswordLabel;
@property (weak, nonatomic) IBOutlet UILabel *RetypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *HowLabel;
@property (weak, nonatomic) IBOutlet UILabel *ErrorMessageLabel;

@end
