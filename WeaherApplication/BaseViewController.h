//
//  BaseViewController.h
//  WeaherApplication
//
//  Created by Niraj Gat on 4/12/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController{
    NSMutableData *container;
}

-(void)makeWebCallWithUrl:(NSString *)strUrl;
-(void)parseData:(NSData *)data;
@end
