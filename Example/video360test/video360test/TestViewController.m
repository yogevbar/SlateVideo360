//
//  TestViewController.m
//  video360test
//
//  Created by Yogev Barber on 15/11/2016.
//  Copyright © 2016 islate. All rights reserved.
//

#import "TestViewController.h"
#import <SlateVideo360/Video360ViewController.h>
@interface TestViewController ()
@property (nonatomic, strong) Video360ViewController *vc;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.vc = [[Video360ViewController alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:self.url];
    [self.view addSubview:self.vc.view];
    [self addChildViewController:self.vc];
    [self.vc didMoveToParentViewController:self];
    self.vc.view.frame = self.view.bounds;
    
    UIButton *btnCardboard = [[UIButton alloc] init];
    [btnCardboard setImage:[UIImage imageNamed:@"cardboard"] forState:UIControlStateNormal];
    btnCardboard.frame = CGRectMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2, 100, 100);
    [self.view addSubview:btnCardboard];
    [btnCardboard addTarget:self action:@selector(btnCardboardTap) forControlEvents:UIControlEventTouchUpInside];
//    [vc enableCardboard];
    
}

-(void)btnCardboardTap{
    [self.vc enableCardboard];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
