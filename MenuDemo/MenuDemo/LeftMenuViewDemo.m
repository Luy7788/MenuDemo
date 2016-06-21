//
//  LeftMenuViewDemo.m
//  MenuDemo
//
//  Created by Lying on 16/6/12.
//  Copyright © 2016年 Lying. All rights reserved.
//
#define ImageviewWidth    18
#define Frame_Width       self.frame.size.width//200

#import "LeftMenuViewDemo.h"

@interface LeftMenuViewDemo ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic ,strong)UITableView    *contentTableView;

@end

@implementation LeftMenuViewDemo

 
-(instancetype)initWithFrame:(CGRect)frame{

    if(self = [super initWithFrame:frame]){
        [self initView];
    }
    return  self;
}

-(void)initView{
    
    //添加头部
    UIView *headerView     = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Frame_Width, 90)];
    [headerView setBackgroundColor:[UIColor purpleColor]];
    CGFloat width          = 90/2;
    
    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(12, (90 - width) / 2, width, width)];
//    [imageview setBackgroundColor:[UIColor redColor]];
    imageview.layer.cornerRadius = imageview.frame.size.width / 2;
    imageview.layer.masksToBounds = YES;
    [imageview setImage:[UIImage imageNamed:@"HeadIcon"]];
    [headerView addSubview:imageview];
    
    
    width                  = 15;
    UIImageView *arrow     = [[UIImageView alloc]initWithFrame:CGRectMake(Frame_Width - width - 10, (90 - width)/2, width, width)];
    arrow.contentMode      = UIViewContentModeScaleAspectFit;
    [arrow setImage:[UIImage imageNamed:@"person-icon0"]];
    [headerView addSubview:arrow];
    
    UILabel *NameLabel = [[UILabel alloc]initWithFrame:CGRectMake(imageview.frame.size.width + imageview.frame.origin.x * 2, imageview.frame.origin.y, 90, imageview.frame.size.height)];
    [NameLabel setText:@"隔壁老王"];
    [headerView addSubview:NameLabel];
    
    [self addSubview:headerView];
    
    
    //中间tableview
    UITableView *contentTableView        = [[UITableView alloc]initWithFrame:CGRectMake(0, headerView.frame.size.height, Frame_Width, self.frame.size.height - headerView.frame.size.height * 2)
                                                                       style:UITableViewStylePlain];
    [contentTableView setBackgroundColor:[UIColor whiteColor]];
    contentTableView.dataSource          = self;
    contentTableView.delegate            = self;
    contentTableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    [contentTableView setBackgroundColor:[UIColor whiteColor]];
    contentTableView.separatorStyle      = UITableViewCellSeparatorStyleNone;
    contentTableView.tableFooterView = [UIView new];
    self.contentTableView = contentTableView;
    [self addSubview:contentTableView];
    
    //添加尾部
    width              = 90;
    UIView *footerView = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height - headerView.frame.size.height, Frame_Width, self.frame.size.height)];
    [footerView setBackgroundColor:[UIColor lightGrayColor]];
    
    UIImageView *LoginImageview = [[UIImageView alloc]initWithFrame:CGRectMake(8 + 5, (width - ImageviewWidth)/2, ImageviewWidth, ImageviewWidth)];
    [LoginImageview setImage:[UIImage imageNamed:@"person-icon8"]];
    [footerView addSubview:LoginImageview];
    width = 30;

    
    [self addSubview:footerView];
}


#pragma mark - tableView delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 45 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = [NSString stringWithFormat:@"LeftView%li",indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];

    }
    [cell setBackgroundColor:[UIColor whiteColor]];
    [cell.textLabel setTextColor:[UIColor grayColor]];
    
    //    [cell setCellModel:nil indexPath:indexPath];
    //    [cell setBackgroundColor:[UIColor colorWithHexString:ColorBackGround]];
    cell.hidden = NO;
    switch (indexPath.row) {
        case 0:
        {
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon1"]];
            [cell.textLabel setText:@"预约发货"];
        }
            break;
            
        case 1:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon2"]];
            [cell.textLabel setText:@"我的订单"];
        }
            break;
            
            
        case 2:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon4"]];
            [cell.textLabel setText:@"我的评价"];
        }
            break;
            
        case 3:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon5"]];
            [cell.textLabel setText:@"物流公司"];
        }
            break;
            //新增 整车调度
        case 4:{
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon10"]];
            [cell.textLabel setText:@"消息中心"];
        }
            break;
            
            
        case 5:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon7"]];
            [cell.textLabel setText:@"设置"];
        }
            break;
            
            
        default:
            break;
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if([self.customDelegate respondsToSelector:@selector(LeftMenuViewClick:)]){
        [self.customDelegate LeftMenuViewClick:indexPath.row];
    }
    
}



@end
