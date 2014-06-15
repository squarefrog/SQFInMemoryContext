SQFInMemoryContext
======================================

Quickly and easily create an in-memory context for Unit Testing Core Data entities.

## Using

Install by either dragging the header and implementation files into your project, or by installing using [CocoaPods](http://cocoapods.org):

```ruby
pod 'SQFInMemoryContext'
```

Import the convenience header.

```objc
#import <SQFInMemoryContext/SQFInMemoryContext.h>
```

Instantiate a new context for your tests:

```objc
NSManagedObjectContext *moc = [NSManagedObjectContext memoryStoreForModel:@"MyCoreDataModel"];
```
