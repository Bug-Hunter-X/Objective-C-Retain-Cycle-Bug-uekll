To fix the retain cycle, we can use weak references:

```objectivec
@interface MyClass : NSObject
@property (weak, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code ...
}
@end
```

By declaring `myString` as `weak`, the `MyClass` object no longer retains a strong reference to the `NSString` object.  The `NSString` will be deallocated when it's no longer needed, breaking the retain cycle and preventing memory leaks.  Alternatively, consider using `copy` instead of `strong` if you need to ensure the string's value is not modified by other objects.  Proper understanding and application of ARC principles is key to avoiding such issues.