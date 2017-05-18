//
//  Student+CoreDataProperties.m
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import "Student+CoreDataProperties.h"

@implementation Student (CoreDataProperties)

@dynamic name;

+(NSFetchRequest<Student *> *)fetchRequest
{
    return [[NSFetchRequest alloc] initWithEntityName:@"Student"];
}

@end
