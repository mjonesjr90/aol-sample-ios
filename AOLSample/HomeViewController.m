//
//  HomeViewController.m
//  MJ Test iOS
//
//  Created by Malcom Jones on 3/23/17.
//  Copyright © 2017 Malcom Jones. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btnBannerAd.layer.borderWidth = 1;
    _btnBannerAd.layer.cornerRadius = 6;
    _btnBannerAd.contentEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    _btnBannerAd.layer.borderColor = [[UIColor colorWithRed:7.0/255.0 green:126.0/255.0 blue:255.0/255.0 alpha:1.0] CGColor];
    
    _btnInterstitialAd.layer.borderWidth = 1;
    _btnInterstitialAd.layer.cornerRadius = 6;
    _btnInterstitialAd.contentEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    _btnInterstitialAd.layer.borderColor = [[UIColor colorWithRed:7.0/255.0 green:126.0/255.0 blue:255.0/255.0 alpha:1.0] CGColor];
    
    _btnNativeAd.layer.borderWidth = 1;
    _btnNativeAd.layer.cornerRadius = 6;
    _btnNativeAd.contentEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    _btnNativeAd.layer.borderColor = [[UIColor colorWithRed:7.0/255.0 green:126.0/255.0 blue:255.0/255.0 alpha:1.0] CGColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
