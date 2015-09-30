//
//  ViewController.m
//  LoginDemo
//
//  Created by majian on 15/9/29.
//  Copyright © 2015年 majian. All rights reserved.
//

#import "ViewController.h"
#import <ShareSDK/ShareSDK.h>
@interface ViewController ()

@end

/*
 如果出现“下载最新版QQ”的提示，在info.plist里面添加Bundle Display Name 并设置值为$(PRODUCT_NAME)即可
 */

@implementation ViewController
#pragma mark - response Method
- (IBAction)loginAction:(id)sender {
    
    [ShareSDK getUserInfoWithType:ShareTypeQQSpace authOptions:nil result:^(BOOL result, id<ISSPlatformUser> userInfo, id<ICMErrorInfo> error) {
        if (YES == result) {
            NSDictionary * sourceData = [userInfo sourceData];
            NSLog(@"userInfo : %@",sourceData);
        } else {
            NSLog(@"qq login failed");
        }
    }];
}

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
