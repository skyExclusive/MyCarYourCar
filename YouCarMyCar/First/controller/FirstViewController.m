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

#define kseGmentHeight 40
#define kscrollViewH 104


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
  self.navigationItem.title = @"免费体验商品";
    [self costom];//布局
    
    
   }

-(void)costom
{
    //布局segment
    self.mySegment = [[UISegmentedControl alloc]initWithItems:@[@"正在进行",@"即将开启"]];
    self.mySegment.backgroundColor = [UIColor blackColor];
    self.mySegment.frame = CGRectMake(0, 64, self.view.frame.size.width,kseGmentHeight);
    [self.mySegment addTarget:self action:@selector(segmentAction:) forControlEvents:(UIControlEventValueChanged)];
    self.mySegment.selectedSegmentIndex = 0;
    [self.view addSubview:self.mySegment];
    //布局 UIScrollView
    self.myscrollView  = [[UIScrollView alloc]initWithFrame:CGRectMake(0, kscrollViewH, self.view.frame.size.width, self.view.frame.size.height - kscrollViewH - 44)];
    self.myscrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height - kscrollViewH - 44);
    self.myscrollView.backgroundColor = [UIColor whiteColor];
    [self.view   addSubview:self.myscrollView];
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - kscrollViewH - 44)];
    image.image = [UIImage imageNamed:@"1.jpg"];
    [self.myscrollView addSubview:image];
    UIImageView *image1 = [[UIImageView  alloc]initWithFrame:CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height - kscrollViewH - 44)];
    image1.image = [UIImage imageNamed:@"2.jpg"];
    [self.myscrollView addSubview:image1];
    
}
-(void)segmentAction:(UISegmentedControl *)segmeng
{
    if (segmeng.selectedSegmentIndex == 0) {
        NSLog(@"正在进行的商品");
        self.myscrollView.contentOffset = CGPointMake(0, 0);
    }else if (segmeng.selectedSegmentIndex == 1){
        NSLog(@"即将开启");
        self.myscrollView.contentOffset = CGPointMake(self.view.frame.size.width, 0);
    }
    
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
