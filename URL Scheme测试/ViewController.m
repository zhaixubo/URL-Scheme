//
//  ViewController.m
//  URL Scheme测试
//
//  Created by 翟旭博 on 2022/11/20.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(100, 100, 200, 100);
    self.button.backgroundColor = [UIColor yellowColor];
    [self.button setTitle:@"点击进入知乎日报" forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
}
- (void)press {
    //NSLog(@"%d", [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"MyAppZhiHu://"]]);
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"MyAppZhiHu://"]]) {
        
       // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"MyAppZhiHu://"]options:@{}completionHandler:nil];
        
    } else {
        NSLog(@"没有这个软件");
    }
   // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=WZH30T99MaM"]options:@{}completionHandler:nil];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms:+12345678901"]options:@{}completionHandler:nil];
}

@end
