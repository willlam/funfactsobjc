//
//  FactBook.h
//  funfacts1
//
//  Created by William Lam on 2015-12-23.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject


@property (strong, nonatomic) NSArray *facts;

- (NSString *) randomFact;

@end
