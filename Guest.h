//
//  Guest.h
//  HotelManager
//
//  Created by Alberto Vega Gonzalez on 11/30/15.
//  Copyright © 2015 Alberto Vega Gonzalez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Reservation;

NS_ASSUME_NONNULL_BEGIN

@interface Guest : NSManagedObject

+ (instancetype)guestWithName: (NSString *)name;

@end

NS_ASSUME_NONNULL_END

#import "Guest+CoreDataProperties.h"
