//
//  flickrImageClick.m
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "flickrImageClick.h"
#include "SecondViewController.h"

@implementation flickrImageClick
@synthesize imageShow;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    imageShow.image=[UIImage imageNamed:_collect];
  //  NSString *name=
   // NSLog(@"%@",imageShow);
}
@end
