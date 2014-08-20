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
#import "MMRFrontVC.h"
#import "MMRBackVC.h"

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
        
        
//        back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goCollection)];
//        back.tintColor = [UIColor blueColor];
//        
//        self.navigationItem.leftBarButtonItem = back;
        
        
        

            

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

        if (index == 0) {
//            [self.view addSubview:rightButton];
        return nil;
    }
    
    index--;
//    [
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(MMRChildViewController *)viewController index];

    
//    [self.view addSubview:leftButton];
//    [self.view addSubview:rightButton];
    index++;
    
    if (index == 14) {
//        [self.view addSubview:leftButton];
        return nil;
    }

    return [self viewControllerAtIndex:index];
    
}

- (MMRChildViewController *)viewControllerAtIndex:(NSUInteger)index
{
    
    MMRChildViewController *childViewController = [[MMRChildViewController alloc] init];
//    NSLog(@" The page index in PageViewController is %d",(int)viewVC.pageIndex);
//    childViewController.index = viewVC.pageIndex;
     childViewController.index = index;
    self.navigationController.navigationBarHidden = YES;
    return childViewController;
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return 14;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    NSDictionary *options =  [NSDictionary dictionaryWithObject:
                              [NSNumber numberWithInteger:UIPageViewControllerSpineLocationMid]
                                                         forKey: UIPageViewControllerOptionSpineLocationKey];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    
//    MMRFrontVC *frontCover = [[MMRFrontVC alloc] init];
//    MMRBackVC *backCover = [[MMRBackVC alloc]init];
//    MMRViewControllerVC *collectionVC = [[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    
//     NSLog(@" The page index in PageViewController is %d",(int)[STASingleton mainSingleton].pageIndex);
    
    
//    MMRChildViewController *initialViewController = [self viewControllerAtIndex:[STASingleton mainSingleton].pageIndex];
    
//   MMRChildViewController *initialViewController = [self viewControllerAtIndex:0];
//    MMRChildViewController *initialViewController = [self viewControllerAtIndex:0];
   
//    NSArray *viewControllers = [NSArray arrayWithObjects:frontCover,collectionVC ,initialViewController,backCover,nil];
//    NSLog(@"view controllers array is %@",viewControllers);
//    MMRChildViewController *initialViewController = [self viewControllerAtIndex:[STASingleton mainSingleton].pageIndex];
//     NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
//    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
//    self.pageController.doubleSided = YES;
//    self.pageController.view.layer.borderWidth = 8.0f;
    [self.pageController didMoveToParentViewController:self];
    
}

- (UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController  *)pageViewController
spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    if(UIInterfaceOrientationIsPortrait(orientation))
    {
        //Set the array with only 1 view controller
        MMRChildViewController *currentViewController = [self.pageController.viewControllers objectAtIndex:[STASingleton mainSingleton].pageIndex];
        NSArray *viewControllers = [NSArray arrayWithObject:currentViewController];
        [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];

        //Important- Set the doubleSided property to NO.
        self.pageController.doubleSided = NO;
        //Return the spine location
//        [self addChildViewController:self.pageController];
//        [[self view] addSubview:[self.pageController view]];
//        //    self.pageController.doubleSided = YES;
//        //    self.pageController.view.layer.borderWidth = 8.0f;
//        [self.pageController didMoveToParentViewController:self];
        return UIPageViewControllerSpineLocationMin;

    }

    else
    {
        NSArray *viewControllers = nil;

        MMRChildViewController *currentViewController = [self.pageController.viewControllers objectAtIndex:[STASingleton mainSingleton].pageIndex];

        NSUInteger currentIndex = [STASingleton mainSingleton].pageIndex;

        if(currentIndex == 0 || currentIndex %2 == 0)
        {
            UIViewController *nextViewController = [self pageViewController:self.pageController viewControllerAfterViewController:currentViewController];
            viewControllers = [NSArray arrayWithObjects:currentViewController, nextViewController, nil];
        }
        else
        {
            UIViewController *previousViewController = [self pageViewController:self.pageController viewControllerBeforeViewController:currentViewController];
            viewControllers = [NSArray arrayWithObjects:previousViewController, currentViewController, nil];
        }
        //Now, set the viewControllers property of UIPageViewController
        [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
//        [self addChildViewController:self.pageController];
//        [[self view] addSubview:[self.pageController view]];
            self.pageController.doubleSided = YES;
//        //    self.pageController.view.layer.borderWidth = 8.0f;
//        [self.pageController didMoveToParentViewController:self];

        return UIPageViewControllerSpineLocationMid;
    }
}





//-(UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController *)pageViewController spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation{
//    MMRFrontVC *frontCover = [[MMRFrontVC alloc] init];
//    MMRBackVC *backCover = [[MMRBackVC alloc]init];
//    MMRViewControllerVC *collectionVC = [[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
//     MMRChildViewController *initialViewController = [self viewControllerAtIndex:[STASingleton mainSingleton].pageIndex];
//     NSArray *viewControllers = [NSArray arrayWithObjects:frontCover,collectionVC ,initialViewController,backCover,nil];
//
//    
//    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
//    
//    self.pageController.doubleSided = YES;
//    return UIPageViewControllerSpineLocationMid;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}


@end
