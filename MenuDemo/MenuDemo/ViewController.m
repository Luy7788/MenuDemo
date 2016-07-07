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
#import "SecondViewController.h"

@interface ViewController ()<HomeMenuViewDelegate>

@property (nonatomic ,strong)MenuView   * menu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]; 
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    
    LeftMenuViewDemo *demo = [[LeftMenuViewDemo alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width * 0.8, [[UIScreen mainScreen] bounds].size.height)];
    demo.customDelegate = self;

    self.menu = [[MenuView alloc]initWithDependencyView:self.view MenuView:demo isShowCoverView:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)LeftMenuViewClick:(NSInteger)tag{
    [self.menu hidenWithAnimation];
 
    NSLog(@"tag = %lu",tag);

    if (tag == 5) {
        [self.navigationController pushViewController:[SecondViewController new] animated:YES];
    }

}


- (IBAction)leftNavAction:(id)sender {
    [self.menu show];
}
 
@end
