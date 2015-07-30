//
//  FlickrPhotoCell.h
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class FlickrPhoto;
@interface FlickrPhotoCell : UICollectionViewCell
@property (nonatomic, strong) IBOutlet UIImageView *imageView;      //to manage the image in the collection and displaying the image in collection view
@property (nonatomic, strong) FlickrPhoto *photo;
@end