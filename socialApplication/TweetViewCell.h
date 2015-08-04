//
//  TweetViewCell.h
//  socialApplication
//
//  Created by optimusmac-12 on 04/08/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TweetViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *imageTweet;
@property (weak, nonatomic) IBOutlet UILabel *titleTweet;

@property (weak, nonatomic) IBOutlet UITextView *dataTweet;
@end
