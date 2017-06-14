//
//  BannerViewController.h
//  MJ Test iOS
//
//  Created by Malcom Jones on 3/22/17.
//  Copyright © 2017 Malcom Jones. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MMAdSDK/MMAdSDK.h>

//This will automatically determine the size of the device and display the correct ad size
#define MILLENIAL_BANNER_AD_SIZE ((UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) ? MMInlineAdSizeLeaderboard:MMInlineAdSizeBanner)

@interface BannerViewController : UIViewController <MMInlineDelegate>

@property (weak, nonatomic) IBOutlet UIView *adContainer;
@property (strong, nonatomic) MMInlineAd *inlineAd;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *inlineHeightConstraint;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *inlineWidthConstraint;

@end
