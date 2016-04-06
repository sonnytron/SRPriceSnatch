//
//  AppDelegate.m
//  SRPriceSnatch
//
//  Created by Sonny Rodriguez on 4/5/16.
//  Copyright © 2016 Sonny Rodriguez. All rights reserved.
//

#import "AppDelegate.h"
#import "SRMainListViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    SRMainListViewController *mainListViewController = [[SRMainListViewController alloc] init];
    [self.window setRootViewController:mainListViewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
   
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
