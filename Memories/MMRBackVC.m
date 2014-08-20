//
//  MMRBackVC.m
//  Memories
//
//  Created by Savitha Reddy on 8/19/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "MMRBackVC.h"

@interface MMRBackVC ()

@end

@implementation MMRBackVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor blackColor];
        self.view.frame = CGRectMake(10, 10,SCREEN_WIDTH-10,SCREEN_HEIGHT-10);
        UILabel *openState = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-50, SCREEN_WIDTH, 50)];
        [openState setText:@"End of the Book"];
        [openState setFont:[UIFont fontWithName:@"Savoye LET" size:25]];
        openState.textAlignment = NSTextAlignmentRight;
        openState.textColor = [UIColor whiteColor];
        [self.view addSubview:openState];
    }
    return self;
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
