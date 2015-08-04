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
    imageShow.image=self.collect.thumbnail;             //using thumbnail property of model class to fetch the thumbnail
}
- (IBAction)saveButton:(id)sender {
    UIImage* imageToSave = [imageShow image]; // alternatively, imageView.image
    
    // Save it to the photo album
    UIImageWriteToSavedPhotosAlbum(imageToSave, nil, nil, nil);
    
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Message" message:@"Image saved to Photo Library successfully" delegate:nil                                                                                                                                                                                                 cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [myAlertView show];

    
    
}

@end
