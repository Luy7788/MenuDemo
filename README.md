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
    //关闭菜单栏 
    [self.menu hidenWithAnimation];
```

https://github.com/Super-lying/MenuDemo/blob/master/ScreenFlow.gif

}
