//
//  MMRViewController.h
//  Memories
//
//  Created by Savitha Reddy on 7/2/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMRChildViewController : UIViewController

@property (assign, nonatomic) NSInteger index;

@property (strong, nonatomic) UILabel *pageData;
@property (strong, nonatomic) UILabel *pageAppName;

@property (strong, nonatomic) UIImageView *pageImage;

@end
