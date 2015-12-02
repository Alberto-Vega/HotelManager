//
//  NSObject+NSmanagedObjectContext_Category.h
//  HotelManager
//
//  Created by Alberto Vega Gonzalez on 12/1/15.
//  Copyright © 2015 Alberto Vega Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface NSObject (NSmanagedObjectContext_Category)

+ (NSManagedObjectContext *)managerContext;

@end
