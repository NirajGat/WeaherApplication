//
//  CityInputViewController.m
//  WeaherApplication
//
//  Created by Niraj Gat on 4/13/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import "CityInputViewController.h"
#import "WeatherViewController.h"

@interface CityInputViewController ()

@end

@implementation CityInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)submit {
    
    WeatherViewController *vc=[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"WeatherVC"];
    NSString *cityName=self.citynameTextField.text;
    vc.cname=cityName;
    [self presentViewController:vc animated:YES completion:nil];
}
@end
