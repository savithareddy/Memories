//
//  MMRViewController.m
//  Memories
//
//  Created by Savitha Reddy on 7/2/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRChildViewController.h"

@interface MMRChildViewController ()

@end

@implementation MMRChildViewController
{
    NSArray *pageColor;
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
        
        
        pageColor = @[[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor]];
    }
    return self;
}



-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"index is %d",(int)self.index);
    self.pageData.text = [NSString stringWithFormat:@"Screen #%d",(int)self.index];
    self.view.backgroundColor = pageColor[self.index];

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
