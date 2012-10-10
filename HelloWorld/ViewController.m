//
//  ViewController.m
//  HelloWorld
//
//  Created by shinderuman on 2012/10/10.
//  Copyright (c) 2012年 shinderuman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)button1OnDown:(id)sender {
    label1.text = text1.text;
}

@end
