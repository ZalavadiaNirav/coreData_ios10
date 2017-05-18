//
//  coreDataHandler.h
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "coreDataStack.h"
#import <CoreData/CoreData.h>
#import "Student+CoreDataProperties.h"

@interface coreDataHandler : NSObject

+(void)loadHardcodedDatabase;
+(void)insertSampleEntityWithName:(NSString *)name context:(NSManagedObjectContext *)context;
+(NSArray<Student *> *)fetchSampleWithContext:(NSManagedObjectContext *)context;




@end
