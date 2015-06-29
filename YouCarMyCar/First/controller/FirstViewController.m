//
//  FirstViewController.m
//  YoucarMycar
//
//  Created by LLY on 15-6-26.
//  Copyright (c) 2015年 LLY. All rights reserved.
//

#import "FirstViewController.h"
#import <ShareSDK/ShareSDK.h>
#import <TencentOpenAPI/QQApiInterface.h>
#import <TencentOpenAPI/TencentOAuth.h>
#import "WXApi.h"
#import "WeiboApi.h"
#import "WeiboSDK.h"
#import <WeChatConnection/WeChatConnection.h>


#import <QZoneConnection/QZoneConnection.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
  self.navigationItem.title = @"免费体验商品";
    
    
    
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
