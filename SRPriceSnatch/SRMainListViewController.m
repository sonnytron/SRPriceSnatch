//
//  SRMainListViewController.m
//  SRPriceSnatch
//
//  Created by Sonny Rodriguez on 4/5/16.
//  Copyright © 2016 Sonny Rodriguez. All rights reserved.
//

#import "SRMainListViewController.h"
#import "SRMainListView.h"
#import <AFNetworking/AFNetworking.h>

@interface SRMainListViewController() <SRMainListViewProtocol>

@property (nonatomic, weak) SRMainListView *mainView;

@end

@implementation SRMainListViewController

- (instancetype)init {
    if (self = [super init]) {
        SRMainListView *mainView = [[SRMainListView alloc] initWithFrame:self.view.frame andProtocol:self];
        self.mainView = mainView;
        [self.view addSubview:self.mainView];
    }
    return self;
}

- (void)submitSearchWithString:(NSString *)searchString {
    // time to implement the AFNetworking request to Amazon product services!
}

@end
