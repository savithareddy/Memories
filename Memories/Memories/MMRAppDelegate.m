//
//  MMRAppDelegate.m
//  Memories
//
//  Created by Savitha Reddy on 7/2/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRAppDelegate.h"
#import "MMRChildViewController.h"
#import "MMRViewController.h"
#import "MMRViewControllerVC.h"
#import "MMRFrontVC.h"
#import "MMRBackVC.h"

@implementation MMRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//   MMRViewControllerVC *collectionVC = [[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
//    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:collectionVC];
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:[MMRFrontVC new]];
//    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:[MMRViewController new]];

//    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:[MMRBackVC  new]];
    self.window.rootViewController = navC;
    navC.navigationBarHidden = YES;
//    self.window.backgroundColor = [UIColor whiteColor];
    
    UIPageControl *pageControl = [UIPageControl appearance];
    pageControl.pageIndicatorTintColor = [UIColor redColor];
    pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    pageControl.backgroundColor = [UIColor orangeColor];
    [self.window makeKeyAndVisible];
    return YES;
}






























- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
