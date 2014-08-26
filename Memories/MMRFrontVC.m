//
//  MMRFrontVC.m
//  Memories
//
//  Created by Savitha Reddy on 8/19/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRFrontVC.h"
#import "MMRViewControllerVC.h"

@interface MMRFrontVC ()

@end

@implementation MMRFrontVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor blackColor];
        self.view.frame = CGRectMake(10, 10,SCREEN_WIDTH-10,SCREEN_HEIGHT-10);
        self.navigationController.navigationBarHidden = YES;
        UILabel *openState1 = [[UILabel alloc] initWithFrame:CGRectMake(0, (SCREEN_HEIGHT-50)/2, SCREEN_WIDTH,50)];
        [openState1 setText:@" The Iron Yard "];
        [openState1 setFont:[UIFont fontWithName:@"Savoye LET" size:30]];
        openState1.textColor = [UIColor whiteColor];
        openState1.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:openState1];
        
        UILabel *openState2 = [[UILabel alloc] initWithFrame:CGRectMake(0, (SCREEN_HEIGHT-50)/2, SCREEN_WIDTH,100)];
        [openState2 setText:@" Class of Q2 2014 "];
        [openState2 setFont:[UIFont fontWithName:@"Savoye LET" size:30]];
        openState2.textColor = [UIColor whiteColor];
        openState2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:openState2];
        
        UILabel *openState3 = [[UILabel alloc] initWithFrame:CGRectMake(0, (SCREEN_HEIGHT-50)/2, SCREEN_WIDTH,150)];
        [openState3 setText:@" Mobile Engineering - iOS "];
        [openState3 setFont:[UIFont fontWithName:@"Savoye LET" size:30]];
        openState3.textColor = [UIColor whiteColor];
        openState3.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:openState3];
//        
//        UILabel *openState = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-50, SCREEN_WIDTH, 50)];
//        [openState setText:@"Open the Book"];
//        [openState setFont:[UIFont fontWithName:@"Savoye LET" size:25]];
//        openState.textAlignment = NSTextAlignmentRight;
//        openState.textColor = [UIColor whiteColor];
//        [self.view addSubview:openState];
        
        UIButton *openState = [[UIButton alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-50, SCREEN_WIDTH, 50)];
        [openState setTitle:@"Open the Book" forState:UIControlStateNormal];
        [openState setFont:[UIFont fontWithName:@"Savoye LET" size:25]];
        [openState addTarget:self action:@selector(openCollectionVC) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:openState];
        
        UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(openCollectionVC)];
        swipe.direction = UISwipeGestureRecognizerDirectionLeft;
        [self.view addGestureRecognizer:swipe];
        
        
    }
    return self;
}

-(void) openCollectionVC
{
    MMRViewControllerVC *collectionVC = [[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    [self.navigationController pushViewController:collectionVC animated:YES];

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
