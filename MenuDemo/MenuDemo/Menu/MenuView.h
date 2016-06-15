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

-(instancetype)initWithDependencyView:(UIView *)dependencyView MenuView:(UIView *)leftmenuView isShowCoverView:(BOOL)isCover;
    

-(void)show;

-(void)hidenWithoutAnimation;
-(void)hidenWithAnimation;

@end
