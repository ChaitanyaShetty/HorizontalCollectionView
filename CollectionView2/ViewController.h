//
//  ViewController.h
//  CollectionView2
//
//  Created by chaitanya on 15/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *imageRecipes;
    NSArray *personNames;
    NSArray *fullNames;
    NSArray *ages;
    NSArray *born;
    NSArray *role;
}
@property (strong, nonatomic) IBOutlet UITextView *dataPassTextView;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;


@end

