//
//  ViewController.m
//  UISegmentNavigationTest
//
///  Created by gugupluto on 14-2-21.
//  http://www.cnblogs.com/gugupluto/
//  Copyright (c) 2014年 zc. All rights reserved.
//

#import "ViewController.h"
#import "GuGuSegmentBarView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize labelTitle;
- (void)viewDidLoad
{
 
    [super viewDidLoad];
    int r = rand() % 255;
    int b = rand() % 255;
    self.view.backgroundColor = RGBCOLOR(r,255, b);
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 200, 320, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = self.labelTitle;
    label.backgroundColor = [UIColor clearColor];
    [self.view addSubview:label];
  
    
    return;
 
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
  
}

@end
