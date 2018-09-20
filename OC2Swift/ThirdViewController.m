//
//  ThirdViewController.m
//  OC2Swift
//
//  Created by shendong on 2018/9/20.
//  Copyright © 2018年 shendong. All rights reserved.
//

#import "ThirdViewController.h"
#import "OC2Swift-Swift.h"
@interface ThirdViewController ()<FaceViewProtocol>

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    FaceView *faceView = [[FaceView alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    faceView.name = @"ss";
    faceView.delegate = self;
    faceView.type = FaceViewTypeLaugh;
    CryView *cryView = [[CryView alloc] initWithFrame:CGRectZero];
    
    [self.view addSubview:faceView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [faceView changeBackgroundColor];
        NSLog(@"faceview.name = %@",faceView.name);
    });
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}
- (void)configureFaceView{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
