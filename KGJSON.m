//
//  NSString+KGJSON.m
//  KGJSON
//
//  Created by David Keegan on 10/16/12.
//  Copyright (c) 2012 David Keegan. All rights reserved.
//

#import "KGJSON.h"

@implementation NSData(KGJSON)

- (id)kg_JSONObject{
    if(self == nil){
        return self;
    }
    return [NSJSONSerialization JSONObjectWithData:self options:0 error:nil];
}

@end

@implementation NSString(KGJSON)

- (id)kg_JSONObject{
    if(self == nil){
        return self;
    }
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
}

+ (NSString *)kg_JSONString:(id)object{
    if(object == nil){
        return nil;
    }
    NSData *json = [NSJSONSerialization dataWithJSONObject:object options:0 error:nil];
    return [[NSString alloc] initWithData:json encoding:NSUTF8StringEncoding];
}

+ (NSString *)kg_prettyJSONString:(id)object{
    if(object == nil){
        return nil;
    }
    NSData *json = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:nil];
    return [[NSString alloc] initWithData:json encoding:NSUTF8StringEncoding];
}

@end

@implementation NSDictionary(KGJSON)

- (NSString *)kg_JSONString{
    return [NSString kg_JSONString:self];
}

- (NSString *)kg_prettyJSONString{
    return [NSString kg_prettyJSONString:self];
}

@end

@implementation NSArray(KGJSON)

- (NSString *)kg_JSONString{
    return [NSString kg_JSONString:self];
}

- (NSString *)kg_prettyJSONString{
    return [NSString kg_prettyJSONString:self];
}

@end
