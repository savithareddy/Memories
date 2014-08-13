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
    NSArray *pageColor;
    UIBarButtonItem *back;
//    MMRViewControllerVC *collectionVC;
    NSArray *pictures;
}

    

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.view.backgroundColor = [UIColor blackColor];
//        self.view.frame = CGRectMake(0, 0, 320, 512);
        
        self.pageData = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 200, 50)];
        self.pageData.text = @"Student #n";
        self.pageData.font = [UIFont systemFontOfSize:30];
        self.pageData.textColor = [UIColor whiteColor];
        [self.view addSubview:self.pageData];
        
        
        pageColor = @[[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor cyanColor],[UIColor redColor],[UIColor greenColor]];
           }
    
    pictures = @[@"Unknown-1.jpeg",@"Unknown-2.jpeg",@"Unknown-3.jpeg",@"Unknown-4.jpeg",@"Unknown-5.jpeg",@"Unknown-6.jpeg",@"Unknown-7.jpeg",@"images-1.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"Unknown.jpeg"];
    
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
    NSLog(@"index is %d",(int)self.index);
     NSLog(@" The page index in ChildViewController is %d",(int)[STASingleton mainSingleton].pageIndex);
    self.pageData.text = [NSString stringWithFormat:@"Student #%d",(int)[STASingleton mainSingleton].pageIndex];
//    self.view.backgroundColor = pageColor[[STASingleton mainSingleton].pageIndex];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:pictures[[STASingleton mainSingleton].pageIndex]]];
    
    
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
