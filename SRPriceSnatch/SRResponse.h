//
//  SRResponse.h
//  SRPriceSnatch
//
//  Created by Sonny Rodriguez on 4/5/16.
//  Copyright © 2016 Sonny Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SRError : NSObject

@end

@interface SRResponse : NSObject

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
- (instancetype)initWithJSONObject:(NSDictionary*)jsonObject;

@end
