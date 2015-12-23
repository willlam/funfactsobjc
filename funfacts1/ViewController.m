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
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFactPressed {
  
  NSArray *facts = [[NSArray alloc] initWithObjects:@"ants stretch when they wake up", @"ostritches run faster than horses", nil];
  self.factLabel.text = [facts objectAtIndex:1];
}

@end
