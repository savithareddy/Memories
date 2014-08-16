//
//  MMRViewController.m
//  Memories
//
//  Created by Savitha Reddy on 7/3/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRViewController.h"
#import "MMRChildViewController.h"
#import "MMRViewControllerVC.h"
#import "STASingleton.h"

@interface MMRViewController ()

@end

@implementation MMRViewController
{
    MMRViewControllerVC *viewVC;

//    NSArray *pageColor;
//    NSArray *pictures;
    
    UIBarButtonItem *back;

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.view.backgroundColor = [UIColor whiteColor];
        
        
        back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goCollection)];
        back.tintColor = [UIColor blueColor];
        
        self.navigationItem.leftBarButtonItem = back;

            

    }
    return self;
}

-(void)goCollection
{
    
    //    MMRViewControllerVC *collectionVc =[[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(MMRChildViewController *)viewController index];
//     NSLog(@"index before dec is %d",(int)index);
        if (index == 0) {
        return nil;
    }
    
    index--;
//     NSLog(@"index after dec is  %d",(int)index);
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(MMRChildViewController *)viewController index];
//    NSLog(@"index before inc is %d",(int)index);
    
    
    index++;
    
    if (index == 13) {
        return nil;
    }
//     NSLog(@"index after inc is  %d",(int)index);
    return [self viewControllerAtIndex:index];
    
}

- (MMRChildViewController *)viewControllerAtIndex:(NSUInteger)index
{
    
    MMRChildViewController *childViewController = [[MMRChildViewController alloc] init];
//    NSLog(@" The page index in PageViewController is %d",(int)viewVC.pageIndex);
//    childViewController.index = viewVC.pageIndex;
     childViewController.index = index;
    return childViewController;
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return 13;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    
//    MMRChildViewController *initialViewController = [self viewControllerAtIndex:[STASingleton mainSingleton].pageIndex];
    
    MMRChildViewController *initialViewController = [self viewControllerAtIndex:[STASingleton mainSingleton].pageIndex];
    
//   MMRChildViewController *initialViewController = [self viewControllerAtIndex:viewVC.pageIndex];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}


@end
