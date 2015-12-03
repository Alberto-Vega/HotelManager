//
//  DateViewController.m
//  HotelManager
//
//  Created by Alberto Vega Gonzalez on 12/1/15.
//  Copyright © 2015 Alberto Vega Gonzalez. All rights reserved.
//

#import "DateViewController.h"
#import "AvailabilityViewController.h"

@interface DateViewController ()

@property (strong, nonatomic) UIDatePicker *startDatePicker;
@property (strong, nonatomic) UIDatePicker *endDatePicker;

@end

@implementation DateViewController

- (void)loadView {
    [super loadView];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    }

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDateViewController];
    [self setupDatePickers];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupDateViewController {
    [self.navigationItem setTitle:@"Select End Date"];
    [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc]initWithBarButtonSystemItem: UIBarButtonSystemItemDone target: self action: @selector(doneButtonSelected:)]];
}

- (void)setupDatePickers {
    
    float navigationBarHeight = CGRectGetHeight(self.navigationController.navigationBar.frame);

    self.endDatePicker = [[UIDatePicker alloc]init];
    self.endDatePicker.datePickerMode = UIDatePickerModeDate;
    self.endDatePicker.frame = CGRectMake(0.0, 84.0, CGRectGetWidth(self.view.frame), 200);
    
    self.startDatePicker = [[UIDatePicker alloc]init];
    self.startDatePicker.datePickerMode = UIDatePickerModeDate;
    self.startDatePicker.frame = CGRectMake(0.0, 84.0, CGRectGetWidth(self.view.frame), 200);
    
    
    [self.startDatePicker setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.endDatePicker setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSLayoutConstraint *startPickerLeading = [NSLayoutConstraint constraintWithItem:self.startDatePicker attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0.0];
    NSLayoutConstraint *startPickerTop = [NSLayoutConstraint constraintWithItem:self.startDatePicker attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:64.0];
    NSLayoutConstraint *startPickerTrailing = [NSLayoutConstraint constraintWithItem:self.startDatePicker attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0.0];
    
    NSLayoutConstraint *endPickerLeading = [NSLayoutConstraint constraintWithItem:self.endDatePicker attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0.0];
    NSLayoutConstraint *endPickerCenterY = [NSLayoutConstraint constraintWithItem:self.endDatePicker attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant: navigationBarHeight / 1.4]; // Height is set to be 0.3 of the view. 0.3333333333333 problem.
    NSLayoutConstraint *endPickerTrailing = [NSLayoutConstraint constraintWithItem:self.endDatePicker attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0.0];

    
    
    [self.view addSubview:self.endDatePicker];
    [self.view addSubview:self.startDatePicker];
    
    // Activate constraints.
    startPickerLeading.active = YES;
    startPickerTop.active = YES;
    startPickerTrailing.active = YES;
    
    endPickerLeading.active = YES;
    endPickerCenterY.active = YES;
    endPickerTrailing.active = YES;
    


}

- (void)doneButtonSelected:(UIBarButtonItem *)sender {
    
    NSDate *endDate = [self.endDatePicker date];
    
    if ([[NSDate date] timeIntervalSinceReferenceDate] > [endDate timeIntervalSinceReferenceDate]) {
        
    
    
    }
    
    AvailabilityViewController *availabilityViewController = [[AvailabilityViewController alloc]init];
    availabilityViewController.endDate = endDate;
    [self.navigationController pushViewController:availabilityViewController animated:YES];
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
