``` obj-c
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
```