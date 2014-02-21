//
//  GuGuSegmentNaviViewController.h
//
//  Created by gugupluto on 14-2-21.
//  http://www.cnblogs.com/gugupluto/
//  Copyright (c) 2014年 gugupluto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GuGuSegmentBarView.h"
@interface GuGuSegmentNaviViewController : UIViewController<GuGuIndexDelegate>
{
 
}
-(id)initWithItems:(NSArray*)titleArray andControllers:(NSArray*)controllers;
@end
