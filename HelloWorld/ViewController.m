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

@synthesize twitterTable, activityIndicator;

- (void)viewDidLoad
{
    [super viewDidLoad];

    [activityIndicator stopAnimating];
    [activityIndicator setHidden:TRUE];
    
    // 空の配列を用意
    twitterList = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getTweet {
    [activityIndicator startAnimating];
    [activityIndicator setHidden:FALSE];

    NSURL *url = [NSURL URLWithString:@"http://api.twitter.com/1/statuses/user_timeline.json?screen_name=masason"];
    NSString *jsonSring = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSData *jsonData = [jsonSring dataUsingEncoding:NSUTF8StringEncoding];;
    NSArray *list = [NSJSONSerialization JSONObjectWithData: jsonData options: nil error:nil];
    
    for(NSDictionary *item in list) {
        [twitterList addObject:[item objectForKey:@"text"]];
    }
    
    [activityIndicator stopAnimating];
    [activityIndicator setHidden:TRUE];
    
    [twitterTable reloadData];
}

// セルの数を設定
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [twitterList count];
}

// テーブルセルの内容を設定
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    NSString *item = [twitterList objectAtIndex:indexPath.row];
    // アプリ名を設定
    cell.textLabel.text = item;
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

@end
