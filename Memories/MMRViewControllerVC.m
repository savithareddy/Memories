//
//  MMRViewControllerVC.m
//  Memories
//
//  Created by Savitha Reddy on 7/4/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "MMRViewControllerVC.h"
#import "MMRCell.h"
#import "MMRChildViewController.h"
#import "MMRViewController.h"

@interface MMRViewControllerVC () <UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>

@end

@implementation MMRViewControllerVC
{
    NSArray *photos;
    NSArray *pictures;
    MMRChildViewController *pageVC;
    MMRViewController *viewVC;
}

-(id)initWithCollectionViewLayout:(UICollectionViewFlowLayout *)layout
{
    self = [super initWithCollectionViewLayout:layout];
    if(self)
    {
        self.collectionView.backgroundColor = [UIColor whiteColor];
        [self.collectionView registerClass:[MMRCell class] forCellWithReuseIdentifier:@"cell"];
        self.collectionView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
        //        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        
        photos = @[@"hello",@"hello2",@"Hello",@"hello",@"hello2",@"Hello",@"hello",@"hello2",@"Hello",@"hello",@"hello2",@"Hello",@"hello"];
        pictures = @[@"Unknown-1.jpeg",@"Unknown-2.jpeg",@"Unknown-3.jpeg",@"Unknown-4.jpeg",@"Unknown-5.jpeg",@"Unknown-6.jpeg",@"Unknown-7.jpeg",@"images-1.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"Unknown.jpeg"];
        
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
    }
    return self;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(120, 120);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 20.0;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 20.0;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [photos count];
}

-(MMRCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MMRCell *cell = (MMRCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    // loop through cell.subviews and removeFromSuperview
    
    [cell.layer setCornerRadius:60.0];
//    UIImageView * imageview = [[UIImageView alloc] initWithImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:photos[indexPath.row]]]]];
    
//    UIImageView * imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:pictures[indexPath.row]]];

//    cellPerson.imageview.frame = CGRectMake(0, 0, 100, 100);
//    cellPerson.imageview.clipsToBounds = YES;
    
//    imageview.layer.cornerRadius = 50;
//    [cell.contentView addSubview:imageview];

//    UILabel * title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, cell.frame.size.width - 20, 30)];
//    UILabel * title = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 120, 20)];
//    float x = cell.frame.size.width;
//    float y = cell.frame.size.height;
//    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(x/2.0, y/2.0, x, y)];
//    title.textAlignment= NSTextAlignmentCenter;
//    title.backgroundColor = [UIColor yellowColor];
//    title.textColor = [UIColor blueColor];
    
    cell.namePicture.text = photos[indexPath.row];
    cell.imagePicture.image =[UIImage imageNamed:pictures[indexPath.row]];
     cell.imagePicture.center = CGPointMake(cell.frame.size.width/2, (cell.frame.size.height-20)/2);
    
//    [cell.contentView addSubview:title];
//    cell .backgroundColor = [UIColor orangeColor];
   
    return cell;
}

//layoutAttributesForElementsInRect:
//layoutAttributesForItemAtIndexPath:

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

    NSLog(@"go to page number %d",(int)pageVC.pageData);
//    for (NSArray *picture in pictures) {
    
        NSInteger pictureTag = indexPath.row;
        NSLog(@" index of theis Picture is %d",(int)pictureTag);
//    }
    viewVC = [[MMRViewController alloc] init];
    [self.view addSubview:viewVC.view];
//    self.navigationController.viewControllers = @[viewVC];
//    [self.navigationController presentViewController:pageVC animated:YES completion:^{
//     
//    }];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end


