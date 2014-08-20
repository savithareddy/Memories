//
//  MMR.m
//  Memories
//
//  Created by Savitha Reddy on 8/19/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMR.h"

@implementation MMR

@end

//- (UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController  *)pageViewController
//spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation
//{
//    if(UIInterfaceOrientationIsPortrait(orientation))
//    {
//        //Set the array with only 1 view controller
//        UIViewController *currentViewController = [self.pageController.viewControllers objectAtIndex:0];
//        NSArray *viewControllers = [NSArray arrayWithObject:currentViewController];
//        [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
//        
//        //Important- Set the doubleSided property to NO.
//        self.pageController.doubleSided = NO;
//        //Return the spine location
//        return UIPageViewControllerSpineLocationMin;
//        
//    }

//    else
//    {
//        NSArray *viewControllers = nil;
//        
//        exampleViewController *currentViewController = [self.pageController.viewControllers objectAtIndex:0];
//        
//        NSUInteger currentIndex = [self.VControllers indexOfObject:currentViewController];
//        
//        if(currentIndex == 0 || currentIndex %2 == 0)
//        {
//            UIViewController *nextViewController = [self pageViewController:self.pageController viewControllerAfterViewController:currentViewController];
//            viewControllers = [NSArray arrayWithObjects:currentViewController, nextViewController, nil];
//        }
//        else
//        {
//            UIViewController *previousViewController = [self pageViewController:self.pageController viewControllerBeforeViewController:currentViewController];
//            viewControllers = [NSArray arrayWithObjects:previousViewController, currentViewController, nil];
//        }
//        //Now, set the viewControllers property of UIPageViewController
//        [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
//        
//        return UIPageViewControllerSpineLocationMid;
//    }
//}



