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
#import  <StoreKit/StoreKit.h>

@interface MMRChildViewController ()<UIWebViewDelegate,SKStoreProductViewControllerDelegate>

@end

@implementation MMRChildViewController
{
    NSArray *pageColor;
    NSArray *pictures;
    NSArray *names;
    NSArray *appName;
    NSArray *appLinks;
    NSArray *appIds;
//    UIBarButtonItem *back;
    UINavigationController *navController;
    UIWebView * webView;
    NSURL *url;
    UIViewController * webController;
    UIBarButtonItem *back;
}

    

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.view.backgroundColor = [UIColor blackColor];
//        self.view.frame = CGRectMake(0, 0, 320, 512);
        
        self.pageData = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, 320, 50)];
//        self.pageData.text = @"Student #n";
//        self.pageData.font = [UIFont fontWithName:@"Chalkduster" size:25];
       self.pageData.font = [UIFont systemFontOfSize:25];
        self.pageData.textColor = [UIColor blackColor];
        self.pageData.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:self.pageData];
        
        self.pageAppName = [[UILabel alloc] initWithFrame:CGRectMake(0, 370, 320, 50)];
        //        self.pageData.text = @"Student #n";
        self.pageAppName.font = [UIFont systemFontOfSize:20];
        self.pageAppName.textColor = [UIColor orangeColor];
        self.pageAppName.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:self.pageAppName];
        
        self.pageImage = [[UIImageView alloc] initWithFrame:CGRectMake(60, 180, 200, 200)];
        self.pageImage.image = [UIImage imageNamed:@"apple-128"];
        [self.view addSubview:self.pageImage];
        
//        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"apple-128"]];
        
        pageColor = @[[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor cyanColor],[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor cyanColor],[UIColor redColor],[UIColor greenColor]];
        names = @[@"Ali Houshmand",@"Ashby Thornwell",@"Austen Johnson",@"Austin Nolan",@"Derek Weber",@"Ed Salter",@"Heidi Proske",@"Jeffery Moulds",@"Jisha Obukwelu",@"John Yam",@"Jon Fox",@"Savitha Reddy",@"TJ Mercer"];
//        pictures = @[@"Unknown-1.jpeg",@"Unknown-2.jpeg",@"Unknown-3.jpeg",@"Unknown-4.jpeg",@"Unknown-5.jpeg",@"Unknown-6.jpeg",@"Unknown-7.jpeg",@"images-1.jpeg",@"images-2.jpeg",@"images-3.jpeg",@"images-4.jpeg",@"images-5.jpeg",@"Unknown.jpeg"];
        
        pictures = @[@"AH",@"AT",@"AJ",@"Unknown-4.jpeg",@"Unknown-5.jpeg",@"ED",@"Unknown-7.jpeg",@"JM",@"JO",@"JY",@"JF",@"SR",@"TJM"];
        
        appName = @[@"MIO(move in/out)",@"BBQ 4 U",@"Box Tagger",@"Austin Nolan",@"Derek Weber",@"Sanctuary Map",@"Heidi Proske",@"Hit The Books ",@"HoneyDo Now",@"Tweet Alarm",@"Piano Says ",@"Shop.PING",@"Writer Blocks"];
        
        appLinks =@[@"itms-apps://itunes.apple.com/us/app/mio-move-in-out/id883248598?ls=1&amp;mt=8",
                    @"https://itunes.apple.com/us/app/bbq-4-u/id883250332?mt=8",
                    @"https://itunes.apple.com/us/app/box-tagger/id889283149?ls=1&mt=8",
                    @"Austin Nolan",
                    @"Derek Weber",
                    @"https://itunes.apple.com/us/app/sanctuary-map/id895339010?ls=1&mt=8",
                    @"Heidi Proske",
                    @"https://itunes.apple.com/us/app/hit-the-books/id883248468?ls=1&mt=8",
                    @"https://itunes.apple.com/us/app/hunnydo-honeydo/id883249854?ls=1&mt=8",
                    @"https://itunes.apple.com/us/app/tweet-alarm/id891423626?mt=8",
                    @"https://itunes.apple.com/us/app/piano-says/id889660366?ls=1&mt=8",
                    @"https://itunes.apple.com/us/app/shop.ping/id891169328?mt=8",
                    @"https://itunes.apple.com/us/app/writer-blocks/id893807282?ls=1&mt=8"];
        
        appIds =@[  @883248598,
                    @883250332,
                    @889283149,
                    @0,
                    @0,
                    @895339010,
                    @0,
                    @883248468,
                    @883249854,
                    @891423626,
                    @889660366,
                    @891169328,
                    @893807282];
        
        
        
//        UIBarButtonItem *backButtonNav = [[UIBarButtonItem alloc] initWithTitle:@"BACK" style:UIBarButtonItemStyleBordered target:self action:@selector(goCollection)];
//        backButtonNav.tintColor = [UIColor blueColor];
//        //    self.navigationController.navigationBarHidden = NO;
//        self.navigationController.navigationItem.leftBarButtonItem = backButtonNav;

        


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
    
//    self.pageData.text = [NSString stringWithFormat:@"Student #%tu",self.index];
    self.pageData.text = names[self.index];
    self.pageAppName.text = appName[self.index];
    self.pageImage.image = [UIImage imageNamed:pictures[self.index]];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gotoItunes)];
    [self.pageImage addGestureRecognizer:recognizer];
    [self.pageImage setMultipleTouchEnabled:YES];
    [self.pageImage setUserInteractionEnabled:YES];
    
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:pictures[index]]];

//     NSLog(@" The page index in ChildViewController is %d",(int)[STASingleton mainSingleton].pageIndex);
//    self.index = [STASingleton mainSingleton].pageIndex;
    
//    NSLog(@"index is %d",(int)self.index);
    
//    self.view.backgroundColor = pageColor[[STASingleton mainSingleton].pageIndex];
    
    
    
//    back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goTableScreen)]; //7-2-2014
//    back.tintColor = [UIColor blueColor];
//    self.navigationItem.leftBarButtonItem = back;
    
//    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(110, 500, 100, 50)];
//    [backButton setTitle:@"Start Page" forState:UIControlStateNormal];
//    [backButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [backButton addTarget:self action:@selector(goTableScreen) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:backButton];
    
//        url = [ [ NSURL alloc ] initWithString:appLinks[self.index]];
//    url = [ [ NSURL alloc ] initWithString:@"http://www.google.com"];
//    url = [ [ NSURL alloc ] initWithString:@"https://itunes.apple.com/us/app/shop.ping/id891169328?mt=8"];
//    url  = [[NSURL alloc] initWithString:appLinks[self.index] relativeToURL:[NSURL URLWithString:@"http://www.google.com"]];
    //    [[UIApplication sharedApplication] openURL:url];
    
    webController = [[UIViewController alloc]init];
    webController.view.frame = CGRectMake(10, 60, 200, 400);
    self.navigationController.navigationBarHidden = NO;
    webView = [[UIWebView alloc] init];
    //    webView.backgroundColor = [UIColor redColor];
    webController.view = webView;
    //    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 60, 50)];
    //    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    //////     [backButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    //    [backButton addTarget:self action:@selector(goCollection) forControlEvents:UIControlEventTouchUpInside];
    //    [self.view addSubview:backButton];
    //    navController = [[UINavigationController alloc] initWithRootViewController:webController];
    
//        [self.view addSubview:webView];
    //    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:appLinks[self.index]]]];
    
    //    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:appLinks[self.index] ofType:@"itms"] isDirectory:NO]]];
    back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(goCollection)];
    back.tintColor = [UIColor blueColor];
    
    self.navigationItem.leftBarButtonItem = back;
    


}

-(void) gotoItunes
{
    SKStoreProductViewController *storeViewController = [[SKStoreProductViewController alloc] init];
    [storeViewController setDelegate:self];
    
    NSDictionary *productParams = @{ SKStoreProductParameterITunesItemIdentifier : appIds[self.index] };
    [storeViewController loadProductWithParameters:productParams completionBlock:^(BOOL result, NSError *error) {
        if (result == YES) {
            
            [self presentViewController:storeViewController
                               animated:YES
                             completion:nil];
        }
        }];


    
//    [webView loadRequest:[NSURLRequest requestWithURL:url]];
//    [self.navigationController pushViewController:webController animated:YES];

    
    
}

//-(void)webViewDidStartLoad:(UIWebView *)webView
//{
//    back.enabled = NO;
//}
//
//-(void)webViewDidFinishLoad:(UIWebView *)webView{
//    if ([webView canGoBack] == YES) {
//        back.enabled = YES;
//    }
//}

-(void)goCollection
{
    
//    MMRViewControllerVC *collectionVc =[[MMRViewControllerVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    [self.navigationController popViewControllerAnimated:YES];
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController {
//    [viewController dismissModalViewControllerAnimated:YES];
    [viewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
