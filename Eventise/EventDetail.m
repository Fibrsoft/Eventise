//
//  EventDetail.m
//  Eventise
//
//  Created by Karan Khatter on 6/29/15.
//  Copyright (c) 2015 Fibrsoft. All rights reserved.
//

#import "EventDetail.h"

@interface EventDetail ()

@end

@implementation EventDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *titleAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithRed:38.0f/255.0f green:150.0f/255.0f blue:22.0f/255.0f alpha:1],
                                      NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Light" size:15]};
    [[UINavigationBar appearance] setTitleTextAttributes:titleAttributes];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
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

@end
