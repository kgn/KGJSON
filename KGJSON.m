//
//  NSString+KGJSON.m
//  KGJSON
//
//  Created by David Keegan on 10/16/12.
//  Copyright (c) 2012 David Keegan. All rights reserved.
//

#import "KGJSON.h"

@implementation NSString(KGJSON)

- (id)JSONObject{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
}

+ (NSString *)JSONString:(id)object{
    NSData *json = [NSJSONSerialization dataWithJSONObject:object options:0 error:nil];
    return [[NSString alloc] initWithData:json encoding:NSUTF8StringEncoding];
}

+ (NSString *)prettyJSONString:(id)object{
    NSData *json = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:nil];
    return [[NSString alloc] initWithData:json encoding:NSUTF8StringEncoding];
}

@end

@implementation NSDictionary(KGJSON)

- (NSString *)JSONString{
    return [NSString JSONString:self];
}

- (NSString *)prettyJSONString{
    return [NSString prettyJSONString:self];
}

@end

@implementation NSArray(KGJSON)

- (NSString *)JSONString{
    return [NSString JSONString:self];
}

- (NSString *)prettyJSONString{
    return [NSString prettyJSONString:self];
}

@end
