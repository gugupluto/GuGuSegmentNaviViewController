//
//  GuGuSegmentNaviViewController.m
//
//  Created by gugupluto on 14-2-21.
//  http://www.cnblogs.com/gugupluto/
//  Copyright (c) 2014年 gugupluto. All rights reserved.
//

#import "GuGuSegmentNaviViewController.h"
#import "GuGuSegmentBarView.h"
#import "GuGuLandscapeTableView.h"

#define kBarHeight 27
@interface GuGuSegmentNaviViewController ()
{
    int currentIndex;
    NSArray *_titleArray;
    GuGuLandscapeTableView *contentTable;
    GuGuSegmentBarView *barView ;
}
@end

@implementation GuGuSegmentNaviViewController

-(id)initWithItems:(NSArray*)titleArray andControllers:(NSArray*)controllers
{
    self = [super init];
    if (self)
    {
        NSString * tmpVersonType = [UIDevice currentDevice].systemVersion;
        
        NSArray * tmpArr = [tmpVersonType componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
        int y = 0;
        if([[tmpArr objectAtIndex:0] isEqualToString:@"7"])
        {
            self.automaticallyAdjustsScrollViewInsets = NO;
            y = 64;
        }
        
        barView = [[GuGuSegmentBarView alloc]initWithFrame:CGRectMake(0, y, 320, kBarHeight) andItems:titleArray];
        
        barView.backgroundColor = RGBCOLOR(230, 230, 230);
        [self.view addSubview:barView];
        barView.clickDelegate = self;
        self.view.backgroundColor = [UIColor whiteColor];
        contentTable = [[GuGuLandscapeTableView alloc]initWithFrame:CGRectMake(0,  kBarHeight + y, 320, self.view.frame.size.height - kBarHeight - y) Array:controllers];
        contentTable.swipeDelegate = self;
        
        [self.view addSubview:contentTable];
        
        
        if (controllers.count > 0)
        {
            for (UIViewController *controller  in controllers)
            {
                //[self addChildViewController:controller];
            }
            currentIndex = 0;
        }
        _titleArray = titleArray;
    }
    return self;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = [_titleArray objectAtIndex:0];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)barSelectedIndexChanged:(int)newIndex
{
    if (newIndex >= 0)
    {
        currentIndex = newIndex;
        self.title = [_titleArray objectAtIndex:newIndex];
        [contentTable selectIndex:newIndex];
    }
}

-(void)contentSelectedIndexChanged:(int)newIndex
{
    [barView selectIndex:newIndex];
}

-(void)scrollOffsetChanged:(CGPoint)offset
{
    int page = (int)offset.y / 320 ;
    float radio = (float)((int)offset.y % 320)/320;
    [barView setLineOffsetWithPage:page andRatio:radio];
}





@end
