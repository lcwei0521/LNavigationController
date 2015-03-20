# LNavigationController
LNavigationController

push页面滑动返回，底部背景实现平移动画或者缩放动画。

此类使用场景：
1、iOS7.0以上版本，由于自定义NavigationBar导致系统返回返回手势失效，或者手动关闭系统返回返回手势:self.navigationController.interactivePopGestureRecognizer.enabled = NO;
2、iOS7.0以下版本

使用方法：

    ViewController *root = [[ViewController alloc]init];
    LNavigationController *unVc = [[LNavigationController alloc]initWithRootViewController:root];
    unVc.animationStyle = AnimationMove;//设置动画效果
    self.window.rootViewController = unVc;
    self.window.backgroundColor = [UIColor whiteColor];
    
    在使用UINavigationController地方直接用LNavigationController就可以。

仅供参考学习之用。
