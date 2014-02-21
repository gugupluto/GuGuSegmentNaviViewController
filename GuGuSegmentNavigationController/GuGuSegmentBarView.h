//
//  GuGuSegmentBarView.h
//
//  Created by gugupluto on 14-2-21.
//  http://www.cnblogs.com/gugupluto/
//  Copyright (c) 2014年 gugupluto. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

@protocol GuGuIndexDelegate <NSObject>

@optional
-(void)barSelectedIndexChanged:(int)newIndex;
-(void)contentSelectedIndexChanged:(int)newIndex;
-(void)scrollOffsetChanged:(CGPoint)offset;

@end
@interface GuGuSegmentBarView : UIScrollView
-(id)initWithFrame:(CGRect)frame andItems:(NSArray*)titleArray;
-(void)setLineOffsetWithPage:(float)page andRatio:(float)ratio;
-(void)selectIndex:(int)index;
@property(nonatomic,assign)int selectedIndex;
@property(nonatomic,unsafe_unretained)id<GuGuIndexDelegate>clickDelegate;
@end
