//
//  CityInputViewController.h
//  WeaherApplication
//
//  Created by Niraj Gat on 4/13/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityInputViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *citynameTextField;

- (IBAction)submit;

@end
