//
//  Guest.m
//  HotelManager
//
//  Created by Alberto Vega Gonzalez on 11/30/15.
//  Copyright © 2015 Alberto Vega Gonzalez. All rights reserved.
//

#import "Guest.h"
#import "Reservation.h"
#import "AppDelegate.h"

@implementation Guest

+ (instancetype)guestWithName:(NSString *)name {
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    Guest *guest = [NSEntityDescription insertNewObjectForEntityForName:@"Guest" inManagedObjectContext:delegate.managedObjectContext];
    
    guest.name = name;
    
    return guest;
}

+ (instancetype)guestWithNameAndLastName:(NSString *)name lastName:(NSString *)lastName {
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    Guest *guest = [NSEntityDescription insertNewObjectForEntityForName:@"Guest" inManagedObjectContext:delegate.managedObjectContext];
    
    guest.name = name;
    guest.lastName = lastName;
    
    return guest;
}

@end
