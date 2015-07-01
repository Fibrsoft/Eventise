//
//  HomeScreen.h
//  Eventise
//
//  Created by Karan Khatter on 6/29/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventCell.h"

@interface HomeScreen : UIViewController
- (IBAction)NewEvent:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *NewEventButton;
@property (weak, nonatomic) IBOutlet UITableView *EventsTableView;

@end
