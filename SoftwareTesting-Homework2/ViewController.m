
//
//  ViewController.m
//  SoftwareTesting-Homework2
//
//  Created by Lazy on 15/4/26.
//  Copyright (c) 2015年 Lazy. All rights reserved.
//

#import "ViewController.h"
#import "BillCalculator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *time;
@property (weak, nonatomic) IBOutlet UITextField *ownTime;
@property (weak, nonatomic) IBOutlet UILabel *bill;

@property (nonatomic, strong) BillCalculator *billCalculator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _billCalculator = [[BillCalculator alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculate:(id)sender {
    NSInteger tm = [_time.text integerValue];
    NSInteger own = [_ownTime.text integerValue];
    CGFloat price =[_billCalculator calculateWithDuration:tm andOwnTime:own];
    if (price < 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"非法数据" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    } else {
        _bill.text = [NSString stringWithFormat:@"%.2f元",price];
    }
}
@end
