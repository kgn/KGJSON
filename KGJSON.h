//
//  NSString+KGJSON.h
//  KGJSON
//
//  Created by David Keegan on 10/16/12.
//  Copyright (c) 2012 David Keegan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData(KGJSON)

- (id)kg_JSONObject;

@end

@interface NSString(KGJSON)

- (id)kg_JSONObject;
+ (NSString *)kg_JSONString:(id)object;
+ (NSString *)kg_prettyJSONString:(id)object;

@end

@interface NSDictionary(KGJSON)

- (NSString *)kg_JSONString;
- (NSString *)kg_prettyJSONString;

@end

@interface NSArray(KGJSON)

- (NSString *)kg_JSONString;
- (NSString *)kg_prettyJSONString;

@end
