//
//  WeatherViewController.m
//  WeaherApplication
//
//  Created by Niraj Gat on 4/12/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import "WeatherViewController.h"
#import "Constant.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getWeatherInfo];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getWeatherInfo{
    
    
   NSString *strUrl=[NSString stringWithFormat:@"%@?q=%@&%@", WEB_URL,self.cname,APIKEY];
    [self makeWebCallWithUrl:strUrl];
}

-(void)parseData:(NSData *)data{
    NSData *tempArray=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    [weatherInfo removeAllObjects];
    
    //city name
    NSData *citydata=[tempArray valueForKey:@"city"];
    NSString *cityName=[citydata valueForKey:@"name"];
    self.citynameLabel.text=cityName;

    NSString *country=[citydata valueForKey:@"country"];
    self.countrynameLabel.text=country;

    //current temp
    NSData *listdata=[tempArray valueForKey:@"list"];
    NSData *maindata=[listdata valueForKey:@"main"];
    NSArray *temperatureArray=[maindata valueForKey:@"temp"];
    NSString *temperature=[temperatureArray objectAtIndex:0];
    float ktemp=temperature.floatValue;
    float celsius=ktemp-273.15;
    self.tempLabel.text=[NSString stringWithFormat:@"%.2f", celsius];
   // NSLog(@"temp %.2f",celsius);
    
    //MIN temp
    NSArray *mintempArray=[maindata valueForKey:@"temp_min"];
    NSString *mintemperature=[mintempArray objectAtIndex:0];
    
    float minktemp=mintemperature.floatValue;
    float mincelsius=minktemp-273.15;
    self.mintempLabel.text=[NSString stringWithFormat:@"%.2f", mincelsius];
    
    //MAX temp
    NSArray *maxtempArray=[maindata valueForKey:@"temp_max"];
    NSString *maxtemperature=[maxtempArray objectAtIndex:0];
    
    float maxktemp=maxtemperature.floatValue;
    float maxcelsius=maxktemp-273.15;
    self.maxtempLabel.text=[NSString stringWithFormat:@"%.2f", maxcelsius];
    
    //Wind speed
    NSData *windspeeddata=[listdata valueForKey:@"wind"];
    NSArray *windspeedArray=[windspeeddata valueForKey:@"speed"];
    NSString *windspeed=[windspeedArray objectAtIndex:0];
   float speed= windspeed.floatValue;
    self.windspeedLabel.text=[NSString stringWithFormat:@"%.2fm/s",speed];
    
    //Humidity
    NSArray *humidityArray=[maindata valueForKey:@"humidity"];
    NSString *humiditydata=[humidityArray objectAtIndex:0];
    
    float humidity=humiditydata.floatValue;
    self.humiditylabel.text=[NSString stringWithFormat:@"%.2f%%",humidity];
    
    //DESCRIBTION

    NSData *weatherdata=[listdata valueForKey:@"weather"];
    NSArray *weatherdetailsArray=[weatherdata valueForKey:@"description"];
    NSString *weatherdetails=[weatherdetailsArray objectAtIndex:0];
    
    NSString *details=weatherdetails;
    NSString *description=[NSString stringWithFormat:@"%@",details];
    
    //to remove the ()
    NSString *clearString = description;
    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"(\n""\n)"];
    clearString= [[clearString componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @""];
    self.weatherdetailsLabel.text=clearString;

   
    }
- (IBAction)btnBack {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
