//
//  SecondViewController.h
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlickrPhotoCell.h"
@interface SecondViewController : UIViewController <UITextFieldDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property(nonatomic, weak) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

