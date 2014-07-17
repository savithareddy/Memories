//
//  MMRViewControllerVC.h
//  Memories
//
//  Created by Savitha Reddy on 7/4/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MMRViewControllerVCDelegate <NSObject>

-(void) passIndexValue: (MMRViewControllerVC *) collection ;

@end

@interface MMRViewControllerVC : UICollectionViewController

@property (nonatomic) NSInteger pageIndex;

@end
