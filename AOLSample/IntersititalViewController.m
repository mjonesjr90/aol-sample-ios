//
//  IntersititalViewController.m
//  MJ Test iOS
//
//  Created by Malcom Jones on 3/23/17.
//  Copyright © 2017 Malcom Jones. All rights reserved.
//

#import "IntersititalViewController.h"

@interface IntersititalViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnShowAd;
@property (weak, nonatomic) IBOutlet UIButton *btnRequestAd;
@property (nonatomic, assign) BOOL interstitialDisplayed;

@end

@implementation IntersititalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Interstitial";
    self.btnShowAd.enabled = NO;
    self.interstitialAd = [[MMInterstitialAd alloc] initWithPlacementId:@"PLACEMENT_ID_HERE"];
    self.interstitialAd.delegate = self;
    self.interstitialAd.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self.interstitialAd load:nil]; //loads the interstitial
}

- (IBAction)loadInterstitial:(id)sender {
    [self.interstitialAd load:nil];
    [self updateButtons];
}

- (IBAction)displayInterstitial:(id)sender {
    [self.interstitialAd showFromViewController:self];
}


- (void)updateButtons{
    if (self.interstitialAd.ready) {
        self.btnRequestAd.enabled = NO;
        self.btnShowAd.enabled = YES;
    }
    else if (!self.interstitialDisplayed){
        self.btnRequestAd.enabled = YES;
        self.btnShowAd.enabled = NO;
    }
    else {
        self.btnRequestAd.enabled = NO;
        self.btnShowAd.enabled = YES;
    }
}

- (void)dealloc{
    _interstitialAd.delegate = nil;
    _interstitialAd = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Interstitial Delegate

- (void)interstitialAdLoadDidSucceed:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial did load.");
    [self updateButtons];
}

- (void)interstitialAd:(MMInterstitialAd *)ad loadDidFailWithError:(NSError *)error {
    NSLog(@"Interstitial load failed: %@.", error);
    [self updateButtons];
}

- (void)interstitialAdWillDisplay:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial will display.");
}

- (void)interstitialAdDidDisplay:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial did display.");
    self.interstitialDisplayed = YES;
}

- (void)interstitialAdWillDismiss:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial will dismiss.");
}

- (void)interstitialAdDidDismiss:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial did dismiss.");
    self.interstitialDisplayed = NO;
    [self updateButtons];
}

- (void)interstitialAdTapped:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial tapped.");
}

- (void)interstitialAdWillLeaveApplication:(MMInterstitialAd *)ad {
    NSLog(@"Interstitial ad will leave application.");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
