//
//  ViewController.m
//  funfacts1
//
//  Created by William Lam on 2015-12-23.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
 self.facts = [[NSArray alloc] initWithObjects:@"ants stretch when they wake up", @"ostritches run faster than horses", nil];
  // so we don't have to create a new array every single time the showFunFactPressedButton is pressed
  self.factLabel.text = [self.facts objectAtIndex:0];
  // to load first fact about ants as the default upon launching app
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFactPressed {
  
  self.factLabel.text = [self.facts objectAtIndex:1];
  
  // should refer to self.facts objectAtIndex:1 as to not throw an error because we're referencing the fact array above
}

@end
