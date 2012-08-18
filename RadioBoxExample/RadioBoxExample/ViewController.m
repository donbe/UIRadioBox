//
//  ViewController.m
//  RadioBoxExample
//
//  Created by Chu Mohua on 12-8-18.
//  Copyright (c) 2012年 Chu Mohua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    radioBox = [UIRadioBox new];
    UIRadioBoxItem * nanRadioBoxItem = [[UIRadioBoxItem alloc] initWithFrame:CGRectMake(110, 161, 29, 29)];
    nanRadioBoxItem.text = @"win";
    [radioBox addItem:nanRadioBoxItem value:0];
    [self.view addSubview:nanRadioBoxItem];
    
    UIRadioBoxItem *nvRadioBoxItem = [[UIRadioBoxItem alloc] initWithFrame:CGRectMake(110, 200, 29, 29)];
    nvRadioBoxItem.text = @"lose";
    [radioBox addItem:nvRadioBoxItem value:1];
    [self.view addSubview:nvRadioBoxItem];
    
    radioBox.value = 0;
    radioBox.delegate = self;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UIRadioBoxDelegate
-(void)RadioBoxValueChange:(UIRadioBox *)sender{
    label.text = sender.text;
}
@end
