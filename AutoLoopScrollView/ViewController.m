//
//  ViewController.m
//  AutoLoopScrollView
//
//  Created by liuxiaofeng on 16/5/3.
//  Copyright © 2016年 Soonbuy. All rights reserved.
//

#import "ViewController.h"
#import "AutoLoopView.h"
@interface ViewController ()<AutoLoopDelegate>

@property (nonatomic,strong) AutoLoopView *loop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *picarray =   @[@"http://e.hiphotos.baidu.com/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=fef54a0ab4de9c82b268f1dd0de8eb6f/f9198618367adab42640b5708cd4b31c8701e475.jpg",@"http://h.hiphotos.baidu.com/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=5a720ec9d6c8a786aa27425c0660a258/4d086e061d950a7b7d65e0f70dd162d9f2d3c9b5.jpg",@"http://e.hiphotos.baidu.com/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=0d6a0b519f22720e6fc3eaa81aa26123/574e9258d109b3de981f4a5bcbbf6c81800a4c64.jpg"];
    [self.loop setScrollerByPicArr:picarray];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 400, 130, 50)];
    [button setTitle:@"turn" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor grayColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(turn) forControlEvents:UIControlEventTouchUpInside];
}

-(void)turn{
    NSArray *picarray=@[@"http://e.hiphotos.baidu.com/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=0d6a0b519f22720e6fc3eaa81aa26123/574e9258d109b3de981f4a5bcbbf6c81800a4c64.jpg"];
    [self.loop setScrollerByPicArr:picarray];
    
}

-(AutoLoopView *)loop{
    if (_loop==nil) {
        _loop = [[AutoLoopView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
        _loop.delegate = self;
        [self.view addSubview:_loop];
    }
    return _loop;
}

-(void)tapPictureTag:(NSInteger)tag{
    NSLog(@"%d",tag);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
