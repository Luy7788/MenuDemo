//
//  LeftMenuViewDemo.h
//  MenuDemo
//
//  Created by Lying on 16/6/12.
//  Copyright © 2016年 Lying. All rights reserved.
//
 
#import <UIKit/UIKit.h>


@protocol HomeMenuViewDelegate <NSObject>

-(void)LeftMenuViewClick:(NSInteger)tag;

@end

@interface LeftMenuViewDemo : UIView

@property (nonatomic ,weak)id <HomeMenuViewDelegate> customDelegate;

@end
