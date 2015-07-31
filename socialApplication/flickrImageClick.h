//
//  flickrImageClick.h
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface flickrImageClick : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageShow;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@property (nonatomic,strong) NSString *collect;

@end
