//
//  ViewController.m
//  DGQCycleView
//
//  Created by denggaoqiang on 2021/4/11.
//

#import "ViewController.h"
#import "DGQCenterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DGQCenterView *centerView = [[DGQCenterView alloc] initWithFrame:CGRectMake(100, 100, 200, 400)];
    centerView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:centerView];
    centerView.imageUrl = @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.08lr.cn%2Fuploads%2Fallimg%2F170513%2F1-1F513164126.jpg&refer=http%3A%2F%2Fwww.08lr.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1620734209&t=40f7a1e2aafd948239ba4321096c0315";
}


@end
