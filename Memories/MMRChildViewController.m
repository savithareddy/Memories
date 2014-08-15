//
//  MMRViewController.m
//  Memories
//
//  Created by Savitha Reddy on 7/2/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRChildViewController.h"
#import "MMRViewControllerVC.h"
#import "STASingleton.h"

@interface MMRChildViewController ()

@end

@implementation MMRChildViewController
{
//    NSArray *pageColor;
//    UIBarButtonItem *back;
////    MMRViewControllerVC *collectionVC;
//    NSArray *pictures;
}

    

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.view.backgroundColor = [UIColor blackColor];
//        self.view.frame = CGRectMake(0, 0, 320, 512);
    }
            return self;
}

-(void) goTableScreen //7-2-2014
{
//    [self hideKeyboard];
//    NSLog(@" back person  button pressed");
    //    [self.delegate backToTable];
//    [self.view removeFromSuperview];
    
    MMRViewControllerVC *collectionVC = [[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc]init]];
//    [self.view addSubview:collectionVC.view];
    
   [self presentViewController:collectionVC animated:YES completion:nil];
   
//    self.navigationController.navigationBarHidden = YES;
//    self.navigationController.viewControllers = @[collectionVC];
    //    [self.navigationController presentViewController:containVC animated:YES completion:^{
    //
//       }];
}


-(void)viewWillAppear:(BOOL)animated
{
    
//     NSLog(@" The page index in ChildViewController is %d",(int)[STASingleton mainSingleton].pageIndex);
//    self.index = [STASingleton mainSingleton].pageIndex;
    
//    NSLog(@"index is %d",(int)self.index);
    
//    self.view.backgroundColor = pageColor[[STASingleton mainSingleton].pageIndex];
    
    
    
//    back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goTableScreen)]; //7-2-2014
//    back.tintColor = [UIColor blueColor];
//    self.navigationItem.leftBarButtonItem = back;
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    [backButton setTitle:@"BACK" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(goTableScreen) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];


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
