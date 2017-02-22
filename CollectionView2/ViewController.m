//
//  ViewController.m
//  CollectionView2
//
//  Created by chaitanya on 15/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    imageRecipes = [[NSArray alloc]initWithObjects:@"Dhoni.png", @"Virat Kohli.png", @"Gautam.png", @"Yuvraj Singh.png", @"Sachin Tendulkar.png", @"Kumar Sangakkara.png", nil];
    personNames = [[NSArray alloc]initWithObjects:@"Dhoni", @"Virat Kohli", @"Gautam", @"Yuvraj Singh", @"Sachin Tendulkar", @"Kumar Sangakkara", nil];
    fullNames = [[NSArray alloc]initWithObjects:@"Mahendra Singh Dhoni", @"Virat Kohli", @"Gautam Gambhir", @"Yuvraj Singh", @"Sachin Ramesh Tendulka", @"Kumara Chokshanada Sangakkara", nil];
    ages = [[NSArray alloc]initWithObjects:@"35", @"27", @"34", @"34", @"43", @"38", nil];
    born = [[NSArray alloc]initWithObjects:@"7 July 1981", @"5 November 1988", @"14 October 1981", @"12 December 1981",
            @"24 April 1973 ", @"27 October 1977", nil];
    role = [[NSArray alloc]initWithObjects:@"Wicket-keeper", @"Batsman", @"Opening batsman", @"All-rounder", @"Batsman",  @"Wicket-keeper, Batsman", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return imageRecipes.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"Cell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.imageViewRecipe.image = [UIImage imageNamed:[imageRecipes objectAtIndex:indexPath.row]];
    
    return cell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSMutableString *str = [[NSMutableString alloc]init];
    [str appendString:personNames[indexPath.item]];
    [str appendString:@"\n"];
    [str appendString:fullNames[indexPath.item]];
    [str appendString:@"\n"];
    [str appendString:ages[indexPath.item]];
    [str appendString:@"\n"];
    [str appendString:born[indexPath.item]];
    [str appendString:@"\n"];
    [str appendString:role[indexPath.item]];
    
    _dataPassTextView.text = str;
}

@end
