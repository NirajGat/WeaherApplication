//
//  BaseViewController.m
//  WeaherApplication
//
//  Created by Niraj Gat on 4/12/16.
//  Copyright (c) 2016 Niraj Gat. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)makeWebCallWithUrl:(NSString *)strUrl{
    container=[[NSMutableData alloc]init];
    
    NSURL *url=[NSURL URLWithString:strUrl];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[NSURLConnection connectionWithRequest:request delegate:self];
    [connection start];

}

# pragma mark :urlConnection Method

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [container appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    [self parseData:container];
}

- (void)parseData:(NSData *)data {
    NSLog(@"parseResult in Base");
}

@end
