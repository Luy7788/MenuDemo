//
//  MenuView.h
//  MenuDemo
//
//  Created by Lying on 16/6/9.
//  Copyright © 2016年 Lying. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MenuView : UIView

 
+(instancetype)MenuViewWithDependencyView:(UIView *)dependencyView MenuView:(UIView *)leftmenuView isShowCoverView:(BOOL)isCover;

/**
 *  初始化方法
 *
 *  @param dependencyView 传入需要滑出菜单的控制器的view
 *  @param leftmenuView   传入需要显示的菜单的view
 *  @param isCover        bool值，是否有右边遮挡的阴影
 *
 *  @return self
 */
-(instancetype)initWithDependencyView:(UIView *)dependencyView MenuView:(UIView *)leftmenuView isShowCoverView:(BOOL)isCover;
    
/**
 *  展开菜单，可放进点击事件内
 */
-(void)show;
/**
 *  关闭菜单不带动画效果
 */
-(void)hidenWithoutAnimation;
/**
 *  关闭菜单带动画效果
 */
-(void)hidenWithAnimation;

@end
