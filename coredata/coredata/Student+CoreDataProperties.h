//
//  Student+CoreDataProperties.h
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import "Student.h"
NS_ASSUME_NONNULL_BEGIN

@interface Student (CoreDataProperties)

+(NSFetchRequest<Student *> *)fetchRequest;

@property (nullable,nonatomic,copy) NSString *name;

@end

NS_ASSUME_NONNULL_END

