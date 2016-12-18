//
//  UIView+YNViewName.h
//  YNViewNameDemo
//
//  Created by 郑一楠 on 2016/12/18.
//  Copyright © 2016年 zyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YNViewName)

- (UIView *)yn_viewNamed:(NSString *)name;

@property (copy, nonatomic) NSString *yn_viewName;

@end
