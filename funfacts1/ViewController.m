//
//  ViewController.m
//  funfacts1
//
//  Created by William Lam on 2015-12-23.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h" //so we can get access the data model throughout the app

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.factBook = [[FactBook alloc] init];
  // to load FactBook, and allocate memory and space and initialize it.
  
  self.factLabel.text = [self.factBook randomFact];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFactPressed {
  
  self.factLabel.text = [self.factBook.facts objectAtIndex:1];
  
  // should refer to self.factBook.facts objectAtIndex:1 as to not throw an error because we're referencing the fact array above
}

@end
