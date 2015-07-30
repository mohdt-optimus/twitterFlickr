//
//  SecondViewController.m
//  socialApplication
//
//  Created by optimusmac-12 on 30/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "SecondViewController.h"
#import "Flickr.h"
#import "FlickrPhoto.h"
#import "FlickrPhotoCell.h"
@interface SecondViewController ()

@property(nonatomic, strong) NSMutableDictionary *searchResults;
@property(nonatomic, strong) NSMutableArray *searches;
@property(nonatomic, strong) Flickr *flickr;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.searches = [@[] mutableCopy];          //search is an array which will keep all the searched items in it to be used later
    self.searchResults = [@{} mutableCopy];     //searchResults keeps the details of each search item
    self.flickr = [[Flickr alloc] init];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate methods
- (BOOL) textFieldShouldReturn:(UITextField *)textField             //this will search the flikr for items
{
     [self.flickr searchFlickrForTerm:textField.text completionBlock:^(NSString *searchTerm, NSArray *results, NSError *error)
    {
        if(results && [results count] > 0)                              //checks if any result for the query key is found or not
        {
            if(![self.searches containsObject:searchTerm])       //if the key was not searched before then it will be added to searches array
            {
               [self.searches insertObject:searchTerm atIndex:0];
                self.searchResults[searchTerm] = results;
            }
        
            dispatch_async(dispatch_get_main_queue(), ^         //images are fetched from flickr, so now reloading the collection to
            {                                                   //show the searched data
               
                [self.collectionView reloadData];
            });
        }
        else
        {
            NSLog(@"Error searching Flickr: %@", error.localizedDescription);
        }
    }];
    [textField resignFirstResponder];
    return YES; 
}

#pragma mark - Datasource

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{                       //tells the number of sections to be returned for data to be displayed
    NSString *searchTerm = self.searches[section];                      //fetching search key from search array
    return [self.searchResults[searchTerm] count];                      //now looking for the sarch key in dictionary
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return [self.searches count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{                                   //collection view cells are put in reusable queue and deqeued when used
    
    FlickrPhotoCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"FlickrCell" forIndexPath:indexPath];
    NSString *searchTerm = self.searches[indexPath.section];
    cell.photo = self.searchResults[searchTerm]
    [indexPath.row];
    return cell;    
}


#pragma mark – FlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath                        //different images has different size so changing the size of cell accordingly
{
    NSString *searchTerm = self.searches[indexPath.section];
    FlickrPhoto *photo =self.searchResults[searchTerm][indexPath.row];
    CGSize retval = photo.thumbnail.size.width > 0 ? photo.thumbnail.size : CGSizeMake(100, 100);   //if obtained picture is of 0 size then showing a blank area of 100X100 size
    return retval;
}

- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(10, 10, 10, 10);            //managing spacing around the cell
}
@end
