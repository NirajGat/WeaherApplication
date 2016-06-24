//
//  Weather.h
//  WeaherApplication
//
//  Created by Niraj Gat on 4/12/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

@property(nonatomic)NSString *cityName;
@property(nonatomic)float temp;
@property(nonatomic)float minTemp;
@property(nonatomic)float maxTemp;
@property(nonatomic)NSString *imageName;

@end
