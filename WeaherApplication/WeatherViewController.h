 //
//  WeatherViewController.h
//  WeaherApplication
//
//  Created by Niraj Gat on 4/12/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface WeatherViewController : BaseViewController<NSURLConnectionDataDelegate>{
    NSMutableArray *weatherInfo;
}
@property (weak, nonatomic) IBOutlet UILabel *citynameLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *mintempLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxtempLabel;
@property (weak, nonatomic) IBOutlet UIImageView *weatherIcon;
@property (weak, nonatomic) IBOutlet UILabel *countrynameLabel;
@property (weak, nonatomic) IBOutlet UILabel *windspeedLabel;
@property (weak, nonatomic) IBOutlet UILabel *humiditylabel;
@property (weak, nonatomic) IBOutlet UILabel *weatherdetailsLabel;
@property NSString *cname;
- (IBAction)btnBack;
@end
