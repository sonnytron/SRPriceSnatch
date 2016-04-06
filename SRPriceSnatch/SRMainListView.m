//
//  SRMainListView.m
//  SRPriceSnatch
//
//  Created by Sonny Rodriguez on 4/5/16.
//  Copyright © 2016 Sonny Rodriguez. All rights reserved.
//

#import "SRMainListView.h"

@interface SRMainListView() <UITextFieldDelegate>

@property (nonatomic, weak) UILabel *titleLabel;
@property (nonatomic, weak) UITextField *searchField;
@property (nonatomic, weak) UIButton *searchButton;

@end

@implementation SRMainListView

- (instancetype)initWithFrame:(CGRect)frame andProtocol:(id<SRMainListViewProtocol>)protocol {
    if (self = [super initWithFrame:frame]) {
        self.frame = frame;
        self.protocol = protocol;
        
        UILabel *titleLabel = [[UILabel alloc] init];
        [titleLabel setText:@"Welcome to my sample app!\nPlease feel free to search for products and\nwatch for the latest price changes!"];
        [titleLabel setNumberOfLines:0];
        [titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
        self.titleLabel = titleLabel;
        [self addSubview:self.titleLabel];
        
        UITextField *searchField = [[UITextField alloc] init];
        [searchField setPlaceholder:@"Search for products"];
        self.searchField = searchField;
        [self addSubview:self.searchField];
        
        UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [searchButton setTitle:@"Product Search" forState:UIControlStateNormal];
        [searchButton addTarget:self action:@selector(searchButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [searchButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.searchButton = searchButton;
        [self addSubview:self.searchButton];
        
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)layoutSubviews {
    [self.titleLabel sizeToFit];
    [self.titleLabel setFrame:CGRectMake(CGRectGetWidth(self.frame)/2 - CGRectGetWidth(self.titleLabel.frame)/2, CGRectGetHeight(self.titleLabel.frame)/2, CGRectGetWidth(self.titleLabel.frame), CGRectGetHeight(self.titleLabel.frame))];
    
    [self.searchField setFrame:CGRectMake(CGRectGetWidth(self.frame)/4, CGRectGetMaxY(self.titleLabel.frame) + 10, CGRectGetWidth(self.frame)/2, 20)];
    
    [self.searchButton setFrame:CGRectMake(CGRectGetWidth(self.frame)/3, CGRectGetMaxY(self.searchField.frame) + 10, CGRectGetWidth(self.frame)/3, 20)];
}

- (void)searchButtonTapped {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.titleLabel setText:[NSString stringWithFormat:@"Searching for %@!\nHang tight!", self.searchField.text]];
    });
    if (self.protocol != nil) {
        [self.protocol submitSearchWithString:self.searchField.text];
    }
    self.searchField.text = @"";
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    [self searchButtonTapped];
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [textField becomeFirstResponder];
}

@end
