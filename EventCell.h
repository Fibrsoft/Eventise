//
//  EventCell.h
//  Eventise
//
//  Created by Karan Khatter on 6/29/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *Day;
@property (weak, nonatomic) IBOutlet UILabel *Suffix;
@property (weak, nonatomic) IBOutlet UILabel *Month;
@property (weak, nonatomic) IBOutlet UILabel *EventType;
@property (weak, nonatomic) IBOutlet UILabel *EventTitle;
@property (weak, nonatomic) IBOutlet UILabel *EventDate;
@property (weak, nonatomic) IBOutlet UILabel *EventLocation;

@end
