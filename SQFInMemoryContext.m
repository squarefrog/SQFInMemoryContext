//
//  SQFInMemoryContext
//
//  Created by Paul Williamson on 28/11/2013.
//  Copyright (c) 2013 Paul Williamson. All rights reserved.
//

#import "SQFInMemoryContext.h"

@implementation NSManagedObjectContext (InMemoryContext)

+ (NSManagedObjectContext *)memoryStoreForModel:(NSString *)modelName
{
    NSManagedObjectContext *moc = [[NSManagedObjectContext alloc] init];
    moc.persistentStoreCoordinator = [self persistantStoreForModelName:modelName];

    return moc;
}

+ (NSPersistentStoreCoordinator *)persistantStoreForModelName:(NSString *)modelName
{
    NSManagedObjectModel *mom = [self modelForName:modelName];
    NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];

    [psc addPersistentStoreWithType:NSInMemoryStoreType
                      configuration:nil
                                URL:nil
                            options:nil
                              error:NULL];
    return psc;
}

+ (NSManagedObjectModel *)modelForName:(NSString *)modelName
{
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:modelName
                                              withExtension:@"momd"];

    return [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
}

@end
