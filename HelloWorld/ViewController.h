//
//  ViewController.h
//  HelloWorld
//
//  Created by shinderuman on 2012/10/10.
//  Copyright (c) 2012年 shinderuman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UITableView *twitterTable;
    UIActivityIndicatorView *activityIndicator;
    NSMutableArray *twitterList;
}

@property (nonatomic,retain) IBOutlet UITableView *twitterTable;
@property (nonatomic,retain) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction) getTweet;

@end
