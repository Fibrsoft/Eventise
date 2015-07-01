//
//  SignUp.m
//  Eventise
//
//  Created by Karan Khatter on 6/19/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import "SignUp.h"

@interface SignUp ()

@end

@implementation SignUp

- (void)viewDidLoad {
    [super viewDidLoad];
    _ErrorMessageLabel.adjustsFontSizeToFitWidth = YES;
    _FirstNameLabel.adjustsFontSizeToFitWidth = YES;
    _LastNameLabel.adjustsFontSizeToFitWidth = YES;
    _AgeLabel.adjustsFontSizeToFitWidth = YES;
    _UsernameLabel.adjustsFontSizeToFitWidth = YES;
    _PasswordLabel.adjustsFontSizeToFitWidth = YES;
    _RetypeLabel.adjustsFontSizeToFitWidth = YES;
    _HowLabel.adjustsFontSizeToFitWidth = YES;
    
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
-(BOOL) PasswordsAreDifferent {
    if(![_Password.text isEqualToString:_RetypePassword.text]) return true;
    return false;
}

-(BOOL)fieldsAreEmpty {
    //Check to see if first name, last name, and username is not empty
    if((_FirstName.text.length) < 1) return true;
    if((_LastName.text.length) < 1) return true;
    if((_Username.text.length) < 1) return true;
    if(((_Password.text.length) < 1) || (_RetypePassword.text.length < 1)) return true;
    return false;
}

- (IBAction)SignUp:(id)sender {
    [self.view endEditing:YES];
    
    if([self PasswordsAreDifferent]) _ErrorMessageLabel.text = @"Passwords do no match. Please try again!";
    else if([self fieldsAreEmpty]) _ErrorMessageLabel.text = @"One or more fields are empty!";
    else {
    
    NSInteger appControlVersion = _AppControl.selectedSegmentIndex;
    NSString *appControl = [NSString stringWithFormat: @"%ld", (long)appControlVersion];
    
    
    PFUser *user = [PFUser user];
    user.username = _Username.text;
    user.password = _Password.text;
    
    // other fields can be set just like with PFObject
    user[@"Age"] = _Age.text;
    user[@"FirstName"] = _FirstName.text;
    user[@"LastName"] = _LastName.text;
    user[@"AppControl"] = appControl;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {   [self performSegueWithIdentifier:@"signUpSuccess" sender:self];
        } else {   NSString *errorString = [error userInfo][@"error"];
            _ErrorMessageLabel.text = errorString;
        }
    }];
    }
    
}
- (IBAction)SignUpTapGesture:(id)sender {
    [self.view endEditing:YES];
}
@end
