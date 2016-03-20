
# HDVideoPlayer

用法简单

   
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

GIF截图

   ![](https://github.com/AlbertXYZ/HDVideoPlayer/raw/master/video.gif)
  
