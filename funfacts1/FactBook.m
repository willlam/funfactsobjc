//
//  FactBook.m
//  funfacts1
//
//  Created by William Lam on 2015-12-23.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "FactBook.h"

@implementation FactBook

- (instancetype)init
{
  self = [super init];
  if (self) {
    _facts = [[NSArray alloc] initWithObjects:
              @"Ants stretch when they wake up.",
              @"Ostriches can run faster than horses.",
              @"Olympic gold medals are actually made mostly of silver.",
              @"You are born with 300 bones; by the time you are an adult you will have 206.",
              @"It takes about 8 minutes for light from the Sun to reach Earth.",
              @"Some bamboo plants can grow almost a meter in just one day.",
              @"The state of Florida is bigger than England.",
              @"Some penguins can leap 2-3 meters out of the water.",
              @"On average, it takes 66 days to form a new habit.",
              @"Mammoths still walked the Earth when the Great Pyramid was being built.",
              nil];
    // refactored - and moved out of view controller.. also so we don't have to create a new array every single time the showFunFactPressedButton is pressed
    // we need to declare the factbook data model as a property of the viewcontroller, so we can use it throughout our view controller class
  }
  return self;
}
// method to declare a random fact from our array
- (NSString *) randomFact {
  int random = arc4random_uniform((int)self.facts.count);
  return [self.facts objectAtIndex:random];
}

@end
