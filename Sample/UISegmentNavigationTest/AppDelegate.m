//
//  AppDelegate.m
//  UISegmentNavigationTest
//
//  Created by gugupluto on 14-2-21.
//  http://www.cnblogs.com/gugupluto/
//  Copyright (c) 2014年 zc. All rights reserved.
//

#import "AppDelegate.h"
#import "GuGuSegmentNaviViewController.h"
#import "ViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSArray *titleArray = [NSArray arrayWithObjects:@"轻松一刻",@"头条",@"北京",@"房产",@"移动互联",@"财经",@"科技",@"游戏",@"历史",@"军事",@"大满贯", nil];
    
    NSMutableArray *controllerArray = [[NSMutableArray alloc]init];
    
    for (NSString* title in titleArray)
    {
        ViewController *vc = [[ViewController alloc]init];
        vc.labelTitle = [title stringByAppendingString:@" View Controller"];
        [controllerArray addObject:vc];
    }
    
    GuGuSegmentNaviViewController *controller = [[ GuGuSegmentNaviViewController alloc]initWithItems:titleArray andControllers:controllerArray];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
    
    self.window.rootViewController = nav;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
