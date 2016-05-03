//
//  AutoLoopView.h
//  AutoLoopScrollView
//
//  Created by liuxiaofeng on 16/5/3.
//  Copyright © 2016年 Soonbuy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AutoLoopDelegate <NSObject>

-(void)tapPictureTag:(NSInteger)tag;

@end

@interface AutoLoopView : UIView
@property (nonatomic,strong) id<AutoLoopDelegate>delegate;

- (void)setScrollerByPicArr:(NSArray *)picArr;

@end
