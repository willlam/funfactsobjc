//
//  ViewController.h
//  funfacts1
//
//  Created by William Lam on 2015-12-23.
//  Copyright © 2015 William Lam. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FactBook;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *factLabel;

@property (strong, nonatomic) FactBook *factBook;

//instead of referring to *facts, after refactoring, we're referring to factbook which houses the data model
// if FactBook doesn't autocomplete, it's because we need to refer to the class (FactBook)


@end

