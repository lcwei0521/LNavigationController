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
    
属性:
@property (nonatomic,assign) BOOL canDragBack;//是否关闭滑动返回手势
@property (nonatomic,assign) AnimationStyle animationStyle;//动画效果(平移或者缩放动画)
    
    
    

学习整合他人代码完成(时间太久刚想起整理，未找到参考来源，见谅。)，仅供参考学习之用。如有问题情况。QQ:954013187
