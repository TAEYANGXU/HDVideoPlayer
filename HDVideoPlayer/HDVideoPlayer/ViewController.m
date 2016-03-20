//
//  ViewController.m
//  HDVideoPlayer
//
//  Created by 徐琰璋 on 16/3/20.
//  Copyright © 2016年 徐琰璋. All rights reserved.
//

#import "ViewController.h"
#import "HDVideoPlayer/HDVideoPlayerController.h"

@interface ViewController ()

@property(nonatomic ,strong) HDVideoPlayerController *videoPlayerController;

@end

@implementation ViewController

@synthesize videoPlayerController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"HDVideoPlayer";
    self.view.backgroundColor = [UIColor whiteColor];
    
    videoPlayerController = [[HDVideoPlayerController alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 180)];
    
    //设置视频地址
    videoPlayerController.contentURL = [NSURL URLWithString:@"http://v.hoto.cn/01/f7/1046273.mp4"];
    
    [self.view addSubview:videoPlayerController.view];
    
    //设置默认初始图片
    //videoPlayerController?.movieBackgroundView.sd_setImageWithURL(NSURL(string: "http://img1.hoto.cn/pic/recipe/g_230/01/f7/1046273_5d6aa3.jpg"), placeholderImage: UIImage(named: "noDataDefaultIcon"))
    
    
    __weak ViewController *WS = self;
    //开启全屏回调事件
    videoPlayerController.fullScreenBlock = ^(){

        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
        [WS.navigationController setNavigationBarHidden:YES animated:NO];
        
    };
    //关闭全屏回调事件
    videoPlayerController.shrinkScreenBlock = ^(){
        
        [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
        [WS.navigationController setNavigationBarHidden:NO animated:NO];
    };
    
}

- (void)dealloc
{
    [videoPlayerController close];
    videoPlayerController = nil;
}

@end
