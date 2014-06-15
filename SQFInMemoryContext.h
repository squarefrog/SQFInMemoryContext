//
//  SQFInMemoryContext
//
//  Created by Paul Williamson on 28/11/2013.
//  Copyright (c) 2013 Wren Living. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (InMemoryContext)

/**
 * Create an in memory NSManagedObjectContext from a given model name
 * (the name of your momd file)
 */
+ (NSManagedObjectContext *)memoryStoreForModel:(NSString *)modelName;

@end
