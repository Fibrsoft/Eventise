//
//  CreateEvent.h
//  Eventise
//
//  Created by Karan Khatter on 6/30/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateEvent : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *personalDescription;
@property (weak, nonatomic) IBOutlet UIPickerView *personalOtherSpinner;
@property (weak, nonatomic) IBOutlet UIButton *personalOption1;
@property (weak, nonatomic) IBOutlet UIButton *personalOption2;
@property (weak, nonatomic) IBOutlet UIButton *personalOption3;
@property (weak, nonatomic) IBOutlet UIButton *personalOption4;
@property (weak, nonatomic) IBOutlet UIButton *personalOtherContinue;
- (IBAction)personalOtherContinue:(id)sender;
- (IBAction)descriptionTapGesture:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *eventDescription;
@property (weak, nonatomic) IBOutlet UIButton *personalOther;
- (IBAction)personalOther:(id)sender;
- (IBAction)option1Clicked:(id)sender;
- (IBAction)option2Clicked:(id)sender;
- (IBAction)option3Clicked:(id)sender;
- (IBAction)option4Clicked:(id)sender;
- (IBAction)personalEvent:(id)sender;



@property (weak, nonatomic) IBOutlet UILabel *businessDescription;
@property (weak, nonatomic) IBOutlet UIPickerView *businessOtherSpinner;
@property (weak, nonatomic) IBOutlet UIButton *businessOption1;
@property (weak, nonatomic) IBOutlet UIButton *businessOption2;
@property (weak, nonatomic) IBOutlet UIButton *businessOption3;
@property (weak, nonatomic) IBOutlet UIButton *businessOption4;
@property (weak, nonatomic) IBOutlet UIButton *businessOtherContinue;
- (IBAction)businessOtherContinue:(id)sender;
- (IBAction)businessEvent:(id)sender;
- (IBAction)businessOption1Clicked:(id)sender;
- (IBAction)businessOption2Clicked:(id)sender;
- (IBAction)businessOption3Clicked:(id)sender;
- (IBAction)businessOption4Clicked:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *businessOther;
- (IBAction)businessOther:(id)sender;
- (IBAction)finalDetailsTapGesture:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *EventName;
@property (weak, nonatomic) IBOutlet UITextField *EventLocation;
@property (weak, nonatomic) IBOutlet UIDatePicker *EventDate;
- (IBAction)FinalDetailsNext:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *EventDescription;
- (IBAction)CreateEvent:(id)sender;


@end
