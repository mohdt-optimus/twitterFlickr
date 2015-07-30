//
//  FlickrPhotoCell.m
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "FlickrPhotoCell.h"
#import "FlickrPhoto.h"

@implementation FlickrPhotoCell
-(void) setPhoto:(FlickrPhoto *)photo {     //to assign the image fetched from flickr to the image view
    
    if(_photo != photo) {
        _photo = photo;
    }
    self.imageView.image = _photo.thumbnail;
}
@end
