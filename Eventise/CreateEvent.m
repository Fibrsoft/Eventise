//
//  CreateEvent.m
//  Eventise
//
//  Created by Karan Khatter on 6/30/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import "CreateEvent.h"
#import <QuartzCore/QuartzCore.h>

@interface CreateEvent ()
@property (nonatomic, retain)  NSArray *personalOtherData;
@property (nonatomic, retain)  NSString *Category;
@property (nonatomic, retain)  NSString *SubCategory;
@property (nonatomic, retain)  NSString *Event_Name;
@property (nonatomic, retain)  NSString *Event_Location;
@property (nonatomic, retain)  NSDate *Event_Date;
@property (nonatomic, retain)  NSString *Event_Description;

@end

@implementation CreateEvent




- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *titleAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithRed:38.0f/255.0f green:150.0f/255.0f blue:22.0f/255.0f alpha:1],
                                      NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Light" size:15]};
    [[UINavigationBar appearance] setTitleTextAttributes:titleAttributes];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    
    //Set picker data for Person Other Data
    _personalOtherData= [[NSMutableArray alloc] initWithObjects:@"English",@"Spanish",@"French",@"Greek",
                 @"Japaneese",@"Korean",@"Hindi", nil];
    _personalOtherSpinner.delegate = self;
    _businessOtherSpinner.delegate = self;
    
    
    [[self.eventDescription layer] setBorderColor:[[UIColor blackColor] CGColor]];
    [[self.eventDescription layer] setBorderWidth:1];
    [[self.eventDescription layer] setCornerRadius:5];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView; {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component; {
    return 7;
}

-(NSString*) pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_personalOtherData objectAtIndex:row];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


//********* Personal Bit More Detail - Functions ************

- (IBAction)personalEvent:(id)sender {
    _Category = @"Personal";
    [self performSegueWithIdentifier:@"personal" sender:self];
}

- (IBAction)personalOther:(id)sender {
    _personalDescription.hidden = YES;
    _personalOther.hidden = YES;
    _personalOption1.hidden = YES;
    _personalOption2.hidden = YES;
    _personalOption3.hidden = YES;
    _personalOption4.hidden = YES;
    _personalOtherSpinner.hidden = NO;
    _personalOtherContinue.hidden = NO;
}

- (IBAction)option1Clicked:(id)sender {
    _SubCategory = (NSString *) _personalOption1.titleLabel;
    [self performSegueWithIdentifier:@"personalFinal" sender:self];
}

- (IBAction)option2Clicked:(id)sender {
    _SubCategory = (NSString *) _personalOption2.titleLabel;
    [self performSegueWithIdentifier:@"personalFinal" sender:self];
}

- (IBAction)option3Clicked:(id)sender {
    _SubCategory = (NSString *) _personalOption3.titleLabel;
    [self performSegueWithIdentifier:@"personalFinal" sender:self];
}


- (IBAction)option4Clicked:(id)sender {
    _SubCategory = (NSString *) _personalOption4.titleLabel;
    [self performSegueWithIdentifier:@"personalFinal" sender:self];
}




- (IBAction)personalOtherContinue:(id)sender {
    //NOTE* NEEDS TO HAVE A DIFFERENT DATA SOURCE TO KEEP THE SAME META FILE
    _SubCategory = _personalOtherData[[_personalOtherSpinner selectedRowInComponent:0]];
    [self performSegueWithIdentifier:@"personalFinal" sender:self];
}
//****************************************************
//****************************************************





//********* Business Bit More Detail - Functions ************

-(IBAction)businessOther:(id)sender {
    _businessDescription.hidden = YES;
    _businessOther.hidden = YES;
    _businessOption1.hidden = YES;
    _businessOption2.hidden = YES;
    _businessOption3.hidden = YES;
    _businessOption4.hidden = YES;
    _businessOtherSpinner.hidden = NO;
    _businessOtherContinue.hidden = NO;
}


- (IBAction)businessOtherContinue:(id)sender {
    //NOTE* NEEDS TO HAVE TO DIFFERENT DATA SOURCES TO KEEP THE SAME META FILE
    _SubCategory = _personalOtherData[[_businessOtherSpinner selectedRowInComponent:0]];
    [self performSegueWithIdentifier:@"businessFinal" sender:self];
}

- (IBAction)businessEvent:(id)sender {
    _Category = @"Business";
    [self performSegueWithIdentifier:@"business" sender:self];
}

- (IBAction)businessOption1Clicked:(id)sender {
    _SubCategory = (NSString *) _businessOption1.titleLabel;
    [self performSegueWithIdentifier:@"businessFinal" sender:self];
}

- (IBAction)businessOption2Clicked:(id)sender {
    _SubCategory = (NSString *) _businessOption2.titleLabel;
    [self performSegueWithIdentifier:@"businessFinal" sender:self];
}

- (IBAction)businessOption3Clicked:(id)sender {
    _SubCategory = (NSString *) _businessOption3.titleLabel;
    [self performSegueWithIdentifier:@"businessFinal" sender:self];
}

- (IBAction)businessOption4Clicked:(id)sender {
    _SubCategory = (NSString *) _businessOption4.titleLabel;
    [self performSegueWithIdentifier:@"businessFinal" sender:self];
}
//****************************************************
//****************************************************


- (IBAction)descriptionTapGesture:(id)sender { //closes the editing screen when background is tapped
    [self.view endEditing:YES];
}

- (IBAction)finalDetailsTapGesture:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)FinalDetailsNext:(id)sender {
    _Event_Name = _EventName.text;
    _Event_Location = _EventLocation.text;
    _Event_Date = _EventDate.date;
    [self performSegueWithIdentifier:@"FinalDetailsNext" sender:self];
}
- (IBAction)CreateEvent:(id)sender {
    _Event_Description = _EventDescription.text;
    //Make sure that all other fields are not empty
    //Verify that you have connection with the backend
    [self performSegueWithIdentifier:@"CompletedEvent" sender:self];
    
    
}
@end
