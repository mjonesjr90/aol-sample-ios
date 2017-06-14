//
//  IntersititalViewController.h
//  MJ Test iOS
//
//  Created by Malcom Jones on 3/23/17.
//  Copyright © 2017 Malcom Jones. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MMAdSDK/MMAdSDK.h>

@interface IntersititalViewController : UIViewController <MMInterstitialDelegate>

@property (strong, nonatomic) MMInterstitialAd *interstitialAd;

@end
