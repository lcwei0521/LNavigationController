//
//  LNavigationController.h
//  LNavigationControllerDemo
//
//  Created by lichaowei on 15/3/20.
//  Copyright (c) 2015年 lcw. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    AnimationZoom = 0, //滑动返回有缩放效果,default
    AnimationMove = 1 //滑动返回平移效果
}AnimationStyle;

@interface LNavigationController : UINavigationController

// Enable the drag to back interaction, Default is YES.

@property (nonatomic,assign) BOOL canDragBack;//是否关闭滑动返回手势
@property (nonatomic,assign) AnimationStyle animationStyle;//动画效果(平移或者缩放)

@end
