//
//  HotelManagerTests.m
//  HotelManagerTests
//
//  Created by Alberto Vega Gonzalez on 11/30/15.
//  Copyright © 2015 Alberto Vega Gonzalez. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+NSmanagedObjectContext_Category.h"

@interface HotelManagerTests : XCTestCase

@property (strong, nonatomic) NSManagedObjectContext *context;

@end

@implementation HotelManagerTests

- (void)setUp {
    [super setUp];
    [self setContext: [NSManagedObjectContext managerContext]];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [self setContext:nil];
    [super tearDown];
}

- (void)testContextCreation {
    XCTAssertNotNil(self.context, @"Context should not be nil. Check category implementation");
}

- (void)testContextOnMainQueue {
    XCTAssertTrue(self.context.concurrencyType == NSMainQueueConcurrencyType, @"Context should be created on the main Queue.");
}

- (void)testCoreDataSave {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Hotel"];
    request.resultType = NSCountResultType;
    
    NSError *error;
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    NSNumber *count = [result firstObject];
    
    XCTAssertNil(error, @"Error should be nil.");
    XCTAssertNotNil(result, @"Result array sould not be nil.");
    XCTAssertTrue([count intValue] > 0, @"Number of objects in the database after seeding should be greater than 0.");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
