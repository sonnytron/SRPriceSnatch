//
//  SRMainListView.h
//  SRPriceSnatch
//
//  Created by Sonny Rodriguez on 4/5/16.
//  Copyright © 2016 Sonny Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SRMainListViewProtocol <NSObject>

- (void)submitSearchWithString:(NSString*)searchString;

@end

@interface SRMainListView : UIView

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
- (instancetype)initWithFrame:(CGRect)frame UNAVAILABLE_ATTRIBUTE;
- (instancetype)initWithFrame:(CGRect)frame andProtocol:(id<SRMainListViewProtocol>)protocol;
@property (nonatomic, weak) id<SRMainListViewProtocol> protocol;

@end
