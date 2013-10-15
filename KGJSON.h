//
//  NSString+KGJSON.h
//  KGJSON
//
//  Created by David Keegan on 10/16/12.
//  Copyright (c) 2012 David Keegan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData(KGJSON)

- (id)JSONObject;

@end

@interface NSString(KGJSON)

- (id)JSONObject;
+ (NSString *)JSONString:(id)object;
+ (NSString *)prettyJSONString:(id)object;

@end

@interface NSDictionary(KGJSON)

- (NSString *)JSONString;
- (NSString *)prettyJSONString;

@end

@interface NSArray(KGJSON)

- (NSString *)JSONString;
- (NSString *)prettyJSONString;

@end
