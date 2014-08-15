//
//  MMRViewController.h
//  Memories
//
//  Created by Savitha Reddy on 7/3/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMRViewController : UIViewController <UIPageViewControllerDataSource,UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageController;

@property (strong, nonatomic) UILabel *pageData;

@property (strong, nonatomic) UIImageView *pageImage;
@end
