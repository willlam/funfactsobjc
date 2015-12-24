//
//  ViewController.m
//  funfacts1
//
//  Created by William Lam on 2015-12-23.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h" //so we can get access the data model throughout the app
#import "ColorWheel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.factBook = [[FactBook alloc] init];
  // to load FactBook, and allocate memory and space and initialize it.
  
  self.colorWheel = [[ColorWheel alloc] init];
  
  
  self.view.backgroundColor = [self.colorWheel randomColor];
  self.factLabel.text = [self.factBook randomFact];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFactPressed {
  UIColor *randomColor = [self.colorWheel randomColor];
  self.view.backgroundColor = randomColor;
  self.funFactButton.tintColor = randomColor;
  self.factLabel.text = [self.factBook randomFact];
  
  // should refer to self.factBook.facts objectAtIndex:1 as to not throw an error because we're referencing the fact array above
}

@end
