//
//  HomeScreen.m
//  Eventise
//
//  Created by Karan Khatter on 6/29/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import "HomeScreen.h"
#import "EventCell.h"


@interface HomeScreen ()

@end

@implementation HomeScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.EventsTableView registerNib:[UINib nibWithNibName:@"EventCell" bundle:nil]
         forCellReuseIdentifier:@"EventCell"];
    
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    NSDictionary *titleAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithRed:38.0f/255.0f green:150.0f/255.0f blue:22.0f/255.0f alpha:1],
                                      NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Light" size:15]};
    [[UINavigationBar appearance] setTitleTextAttributes:titleAttributes];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    
    
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 3;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *v = [UIView new];
    [v setBackgroundColor:[UIColor colorWithRed:239.0f/255.0f green:239.0f/255.0f blue:244.0f/255.0f alpha:1]];
    return v;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 90;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *simpleTableIdentifier = @"EventCell";
    
    EventCell *cell =
    (EventCell*)[tableView dequeueReusableCellWithIdentifier:@"EventCell"
                                             forIndexPath:indexPath];
    if(cell == nil)
    {
        cell = [[EventCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"EventCell"];
    }
    
    cell.Day.adjustsFontSizeToFitWidth = YES;
    cell.Suffix.adjustsFontSizeToFitWidth = YES;
    cell.Month.adjustsFontSizeToFitWidth = YES;
    cell.EventType.adjustsFontSizeToFitWidth = YES;
    cell.EventTitle.adjustsFontSizeToFitWidth = YES;
    cell.EventDate.adjustsFontSizeToFitWidth = YES;
    cell.EventLocation.adjustsFontSizeToFitWidth = YES;
    
    cell.Day.text = @"1";
    cell.Suffix.text = @"ST";
    cell.Month.text = @"June";
    cell.EventType.text = @"Birthday Event";
    cell.EventTitle.text = @"Karan's Birthday Party";
    cell.EventDate.text = @"June 1st, 2015 @ 10 PM";
    cell.EventLocation.text = @"Sugar Land, TX";
    
    return cell;
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

- (IBAction)NewEvent:(id)sender {
}
@end
