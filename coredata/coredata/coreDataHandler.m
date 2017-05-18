//
//  coreDataHandler.m
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import "coreDataHandler.h"

@implementation coreDataHandler

+(void)loadHardcodedDatabase
{
    coreDataStack *sharedDataStack=[coreDataStack sharedInstance];
    NSManagedObjectContext *context=sharedDataStack.persistentContainer.viewContext;
    NSArray<Student *> *allStudent=[self fetchSampleWithContext:context];
    if(allStudent && allStudent.count >0)
    {
        return;
    }
    
    for (int i=1; i<10; i++)
    {
        NSString *name=[NSString stringWithFormat:@"Student %d",i];
        [self insertSampleEntityWithName:name context:context];
    }
    [context performBlockAndWait:^{
        [sharedDataStack saveContext];
    }];
}

+(void)insertSampleEntityWithName:(NSString *)name context:(NSManagedObjectContext *)context
{
    Student *newStudent=[[Student alloc] initWithContext:context];
    newStudent.name=name;
}

+(NSArray<Student *> *)fetchSampleWithContext:(NSManagedObjectContext *)context;
{
    __block NSArray<Student *> *result=nil;
    [context performBlockAndWait:^{
        
        NSFetchRequest *request=[Student fetchRequest];
        NSSortDescriptor *nameDescriptor=[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
        request.sortDescriptors=@[nameDescriptor];
        NSError *error=nil;
        result=[context executeFetchRequest:request error:&error];
        if(error)
        {
            NSLog(@"Unresolved Error %@",error);
        }
        
        
    }];
    return result;
}


@end
