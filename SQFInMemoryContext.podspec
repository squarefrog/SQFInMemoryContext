Pod::Spec.new do |s|
  s.name         = "SQFInMemoryContext"
  s.version      = "0.0.1"
  s.summary      = "Quickly and easily create an in-memory context for Unit Testing Core Data entities."

  s.description  = <<-DESC
      SQFInMemoryContext
      ======================================

      Quickly and easily create an in-memory context for Unit Testing Core Data entities. Despite the name, SQFInMemoryContext is actually just a simple category on NSManagedObjectContext.

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
                   DESC

  s.homepage     = "https://github.com/squarefrog/SQFInMemoryContext"
  s.license      = "MIT"
  s.author             = { "Paul Williamson" => "squarefrog@gmail.com" }
  s.social_media_url   = "http://twitter.com/squarefrog"
  s.source       = { :git => "https://github.com/squarefrog/SQFInMemoryContext.git", :tag => "0.0.1" }
  s.source_files  = "*.{h,m}"
  s.public_header_files = "SQFInMemoryContext.h"
  s.framework  = "CoreData"
  s.requires_arc = true

end
