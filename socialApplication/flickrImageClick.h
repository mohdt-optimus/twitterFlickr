//
//  flickrImageClick.h
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlickrPhoto.h"
@interface flickrImageClick : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageShow;

- (IBAction)saveButton:(id)sender;

@property (nonatomic,strong) FlickrPhoto *collect;

@end
