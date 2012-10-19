``` obj-c
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
```