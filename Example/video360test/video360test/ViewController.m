//
//  ViewController.m
//  video360test
//
//  Created by linyize on 16/6/20.
//  Copyright © 2016年 islate. All rights reserved.
//

#import "ViewController.h"

#import "Video360ViewController.h"
#import "TestViewController.h"
@implementation ViewController

- (IBAction)playURL:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"https://cdn.doremeet.com/live/hls/161105-maor-sample/index.m3u8"];
    TestViewController *vc = [[TestViewController alloc] init];
    vc.url = url;
//    Video360ViewController *videoController = [[Video360ViewController alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:url];
    
    if (![[self presentedViewController] isBeingDismissed]) {
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (IBAction)playFile:(id)sender
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"demo1" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:path];
    Video360ViewController *videoController = [[Video360ViewController alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:url];
    
    if (![[self presentedViewController] isBeingDismissed]) {
        [self presentViewController:videoController animated:YES completion:nil];
    }
}

@end
