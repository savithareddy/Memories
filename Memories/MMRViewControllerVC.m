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
#import "STASingleton.h"

@interface MMRViewControllerVC () <UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>

@property (nonatomic) UIPageControl *pageControl;

@end

@implementation MMRViewControllerVC
{
    NSArray *photos;
    NSArray *pictures;
    MMRChildViewController *pageVC;
    MMRViewController *viewVC;
    UIBarButtonItem *back;
    
}

-(id)initWithCollectionViewLayout:(UICollectionViewFlowLayout *)layout
{
    self = [super initWithCollectionViewLayout:layout];
    if(self)
    {
        self.collectionView.backgroundColor = [UIColor whiteColor];
        self.navigationController.navigationBarHidden = YES;
//     self.view.frame = CGRectMake(10, 10,SCREEN_WIDTH-10,SCREEN_HEIGHT-10);
        
//        self.navigationItem.title = @"Index";
//        [self.navigationController.navigationBar setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Arial" size:9],
//          NSFontAttributeName, nil]];
//        [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blueColor]}];
//       [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:UITextAttributeTextColor]];
        
        [self.collectionView registerClass:[MMRCell class] forCellWithReuseIdentifier:@"cell"];
        [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind: UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
//        [layout setHeaderReferenceSize:CGSizeMake(320, 50)];
        self.collectionView.contentInset = UIEdgeInsetsMake(50, 0, 0, 0);
//                layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        
        photos = @[@"AH",@"AT",@"AJ",@"AN",@"DW",@"ES",@"HP",@"JM",@"JO",@"JY",@"JF",@"SR",@"TM",@""];
//        pictures = @[@"Unknown-1.jpeg",@"Unknown-2.jpeg",@"Unknown-3.jpeg",@"Unknown-4.jpeg",@"Unknown-5.jpeg",@"Unknown-6.jpeg",@"Unknown-7.jpeg",@"images-1.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"Unknown.jpeg"];
        
        pictures = @[@"Ali",@"Ashby",@"Austen",@"Austin.jpeg",@"Derek",@"ED.jpeg",@"Heidi",@"Jeffery",@"Jisha",@"John",@"Jon",@"Savitha",@"TJ",@""];
        
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        
//        UIBarButtonItem *backButtonNav = [[UIBarButtonItem alloc] initWithTitle:@"BACK" style:UIBarButtonItemStyleBordered target:self action:@selector(goCollection)];
//        backButtonNav.tintColor = [UIColor blueColor];
//        //    self.navigationController.navigationBarHidden = NO;
//        self.navigationController.navigationItem.leftBarButtonItem = backButtonNav;
        
//        back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goCollection)];
//        back.tintColor = [UIColor blueColor];
//        
//        self.navigationItem.leftBarButtonItem = back;
    }
    return self;
}

-(void)goCollection
{
    [self.navigationController popViewControllerAnimated:YES];
    
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
    [STASingleton mainSingleton].totalPages = [photos count];
    return [photos count];
}

-(MMRCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MMRCell *cell = (MMRCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    // loop through cell.subviews and removeFromSuperview
//    cell.frame = CGRectMake(0, 50, 320, SCREEN_HEIGHT);
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

//    NSLog(@"go to page number %d",(int)pageVC.pageData);
//    for (NSArray *picture in pictures) {
    
    
    
//    }
    
     self.pageIndex = indexPath.row;
    [STASingleton mainSingleton].pageIndex = indexPath.row;
    NSLog(@" index of theis Picture is %d",(int)self.pageIndex);
    viewVC = [[MMRViewController alloc] init];
//    [self.view addSubview:viewVC.view];
    
//    pageVC = [[MMRChildViewController alloc] init];
//    [self.view addSubview:pageVC.view];

//    self.pageControl.currentPage = indexPath.row;
//    self.navigationController.viewControllers = @[viewVC];
//    [self.navigationController presentViewController:viewVC animated:YES completion:^{
//
//    }];
    [self.navigationController pushViewController:viewVC animated:YES];
}

//- (void)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout cellCenteredAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    self.pageControl.currentPage = indexPath.row;
//   
//}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self setEdgesForExtendedLayout:UIRectEdgeNone];
self.automaticallyAdjustsScrollViewInsets = NO;
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-80)/2, 10, 80, 40)];
//    header.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:header];
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,80,40)];
    headerLabel.text = @"My Friends";
    headerLabel.font = [UIFont fontWithName:@"Arial" size:15];
    headerLabel.textColor = [UIColor blueColor];
    headerLabel.textAlignment = NSTextAlignmentCenter;
    [header addSubview:headerLabel];

    
}

//-(void)viewDidAppear:(BOOL)animated
//{
//    self.navigationController.navigationBarHidden = YES;
//}

//-(void)viewWillAppear:(BOOL)animated
//{
//     }
//-(BOOL)prefersStatusBarHidden{
//    return YES;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end


