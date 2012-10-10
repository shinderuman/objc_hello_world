//
//  ViewController.h
//  HelloWorld
//
//  Created by shinderuman on 2012/10/10.
//  Copyright (c) 2012年 shinderuman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIButton *button1;
    IBOutlet UILabel *label1;
    IBOutlet UITextField *text1;
}

- (IBAction)button1OnDown:(id)sender;

@end
