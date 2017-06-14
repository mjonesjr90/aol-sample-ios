//
//  BannerViewController.m
//  MJ Test iOS
//
//  Created by Malcom Jones on 3/22/17.
//  Copyright © 2017 Malcom Jones. All rights reserved.
//

#import "BannerViewController.h"

@interface BannerViewController ()


@end

static const CGFloat kLeaderboardWidth = 728;
static const CGFloat kLeaderboardHeight = 90;
static const CGFloat kBannerWidth = 320;
static const CGFloat kBannerHeight = 50;

@implementation BannerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Inline Banner";
    MMInlineAdSize adSize = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) ? MMInlineAdSizeBanner :MMInlineAdSizeLeaderboard;
    self.inlineAd = [[MMInlineAd alloc] initWithPlacementId:@"PLACEMENT_ID_HERE" adSize:MILLENIAL_BANNER_AD_SIZE];
    
    self.inlineAd.delegate = self;
    [self configureContainerForSize:adSize];
    [self.adContainer addSubview:self.inlineAd.view];
    //[self.adContainer setFrame:CGRectMake(0, 0, 320, 50)];
    [self.inlineAd request:nil];
}

- (IBAction)requestBannerAd:(id)sender {
    [self.inlineAd request:nil];
}

- (UIViewController *)viewControllerForPresentingModalView {
    return self;
}

- (void)dealloc {
    [_inlineAd.view removeFromSuperview];
    _inlineAd.delegate = nil;
    _inlineAd = nil;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Autolayout

- (void)configureContainerForSize:(MMInlineAdSize)adSize{
    CGSize dimensions = CGSizeMake(0, 0);
    switch (adSize) {
        case MMInlineAdSizeBanner: {
            dimensions.width = kBannerWidth;
            dimensions.height = kBannerHeight;
            break;
        }
        case MMInlineAdSizeLeaderboard: {
            dimensions.width = kLeaderboardWidth;
            dimensions.height = kLeaderboardHeight;
            break;
        }
        default: {
            break;
        }
    }
    
    self.inlineWidthConstraint.constant = dimensions.width;
    self.inlineHeightConstraint.constant = dimensions.height;
    
    [self.view setNeedsLayout];
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
