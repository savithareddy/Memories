//
//  MMRViewController.m
//  Memories
//
//  Created by Savitha Reddy on 7/2/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRChildViewController.h"
#import "MMRViewControllerVC.h"


@interface MMRChildViewController ()

@end

@implementation MMRChildViewController
{
    NSArray *pageColor;
    UIBarButtonItem *back;
    MMRViewControllerVC *collectionVC;
}

    

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.view.backgroundColor = [UIColor blackColor];
        self.view.frame = CGRectMake(0, 0, 320, 512);
        
        self.pageData = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 200, 50)];
        self.pageData.text = @"Screen #n";
        self.pageData.font = [UIFont systemFontOfSize:30];
        self.pageData.textColor = [UIColor whiteColor];
        [self.view addSubview:self.pageData];
        
        
        pageColor = @[[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor cyanColor],[UIColor redColor],[UIColor greenColor]];
           }
    return self;
}

-(void) goTableScreen //7-2-2014
{
//    [self hideKeyboard];
    NSLog(@" back person  button pressed");
    //    [self.delegate backToTable];
    MMRViewControllerVC *collectionVC = [[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc]init]];
                                                                                                   
    
    [self presentViewController:collectionVC animated:YES completion:nil];
   
//    self.navigationController.navigationBarHidden = YES;
//    self.navigationController.viewControllers = @[collectionVC];
    //    [self.navigationController presentViewController:containVC animated:YES completion:^{
    //
    //    }];
}


-(void)viewWillAppear:(BOOL)animated
{
     
    NSLog(@"index is %d",(int)self.index);
    self.pageData.text = [NSString stringWithFormat:@"Screen #%d",(int)collectionVC.pageIndex];
    self.view.backgroundColor = pageColor[self.index];
    
    
//    back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goTableScreen)]; //7-2-2014
//    back.tintColor = [UIColor blueColor];
//    self.navigationItem.leftBarButtonItem = back;
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 50, 40)];
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
