//
//  coreDataStack.h
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface coreDataStack : NSObject
{


}

@property (strong,nonatomic,readonly) NSPersistentContainer *persistentContainer;

+(instancetype)sharedInstance;
-(void)saveContext;

@end
