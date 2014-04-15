//
//  ViewController.m
//  Test2
//
//  Created by Christophe Olivier on 04/04/2014.
//  Copyright (c) 2014 tof. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Mess;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)brouge:(id)sender
{
    NSString *lemessage = [[NSString alloc] initWithFormat:@"Bravo vous avez tout cassé ! Il va falloir payer"];
    _Mess.text = lemessage;
    _Mess.numberOfLines = 2;
    _Mess.font = [UIFont fontWithName:@"Courier" size:15.0f];
    _Mess.textAlignment = NSTextAlignmentCenter;
    _Mess.textColor = [UIColor colorWithRed: 1.0f green: 0.0f blue: 0.0f alpha: 1.0f];
}

- (IBAction)bvert:(id)sender {

    NSString *lemessage = [[NSString alloc] initWithFormat:@"Bravo tout est bien !"];
    _Mess.text = lemessage;

}

- (IBAction)bcasseb:(id)sender {
}

@end
