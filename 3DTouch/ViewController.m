//
//  ViewController.m
//  3DTouch
//
//  Created by zjwang on 16/4/8.
//  Copyright © 2016年 Xsummerybc. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // http://www.jianshu.com/p/c9a8ec970003
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    // 创建标签的ICON图标。
    UIApplicationShortcutIcon *icon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeMail];
    // 创建一个标签，并配置相关属性。
    UIApplicationShortcutItem *item = [[UIApplicationShortcutItem alloc] initWithType:@"one" localizedTitle:@"邮件" localizedSubtitle:nil icon:icon userInfo:nil];
    
    // 创建标签的ICON图标。
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeFavorite];
    // 创建一个标签，并配置相关属性。
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc] initWithType:@"two" localizedTitle:@"喜欢" localizedSubtitle:nil icon:icon1 userInfo:nil];
    // 将标签添加进Application的shortcutItems中。
    [UIApplication sharedApplication].shortcutItems = @[item, item1];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(touch3D:) name:@"zjw" object:nil];
    
    
}
- (void)touch3D:(NSNotification *)object
{
    SecondViewController *sec = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:sec animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
