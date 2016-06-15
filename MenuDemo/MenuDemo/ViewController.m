//
//  ViewController.m
//  MenuDemo
//
//  Created by Lying on 16/6/9.
//  Copyright © 2016年 Lying. All rights reserved.
//

#import "ViewController.h"

#import "MenuView.h"
#import "LeftMenuViewDemo.h"

@interface ViewController ()<HomeMenuViewDelegate>
@property (nonatomic ,strong)MenuView      *menu;
//@property (nonatomic ,strong)LeftMenuViewDemo   *leftDemo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]; 
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    
    LeftMenuViewDemo *demo = [[LeftMenuViewDemo alloc]initWithFrame:CGRectMake(0, 0, 200, [[UIScreen mainScreen] bounds].size.height)];
    demo.customDelegate = self;
    
    MenuView *menu = [MenuView MenuViewWithDependencyView:self.view MenuView:demo isShowCoverView:YES];
//    MenuView *menu = [[MenuView alloc]initWithDependencyView:self.view MenuView:demo isShowCoverView:YES];
    self.menu = menu;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)LeftMenuViewClick:(NSInteger)tag{
    [self.menu hidenWithAnimation];
    NSString *tagstr = [NSString stringWithFormat:@"%d",tag];
    [[[UIAlertView alloc] initWithTitle:@"提示" message:tagstr delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil] show];
}


- (IBAction)leftNavAction:(id)sender {
    [self.menu show];
}
 
@end
