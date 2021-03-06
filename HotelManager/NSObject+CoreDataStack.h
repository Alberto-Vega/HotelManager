//
//  NSObject+CoreDataStack.h
//  HotelManager
//
//  Created by Alberto Vega Gonzalez on 12/2/15.
//  Copyright © 2015 Alberto Vega Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;
@import UIKit;

@interface NSObject (CoreDataStack)

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@end
