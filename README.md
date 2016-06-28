# MenuDemo
这是一个左滑菜单的Demo

使用办法：

import "MenuView.h"

```    
    //传入需要右滑的view:DependencyView,以及左侧的菜单view:MenuView
    MenuView *menu = [MenuView MenuViewWithDependencyView:self.view MenuView:menuView isShowCoverView:YES];
    //MenuView *menu = [[MenuView alloc]initWithDependencyView:self.view MenuView:menuView isShowCoverView:NO];
    self.menu = menu;
```

除了滑动展开和关闭菜单外，其他打开关闭方法：
```
    //展开菜单栏
    [self.menu show];
    //关闭菜单栏带动画效果
    [self.menu hidenWithAnimation];
    //关闭菜单不带动画效果
    [self.menu hidenWithAnimation];
```

 ![image](https://github.com/Super-lying/MenuDemo/blob/master/ScreenFlow.gif)


MenuView.h
```
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
```

}
