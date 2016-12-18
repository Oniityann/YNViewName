//
//  UIView+YNViewName.m
//  YNViewNameDemo
//
//  Created by 郑一楠 on 2016/12/18.
//  Copyright © 2016年 zyn. All rights reserved.
//

#import "UIView+YNViewName.h"
#import <objc/runtime.h>

static const void *YNViewNameKey = @"YNViewName";

@implementation UIView (YNViewName)

- (void)setYn_viewName:(NSString *)yn_viewName {
    objc_setAssociatedObject(self, YNViewNameKey, yn_viewName, OBJC_ASSOCIATION_COPY_NONATOMIC);;
}

- (NSString *)yn_viewName {
    return objc_getAssociatedObject(self, YNViewNameKey);
}

- (UIView *)yn_viewNamed:(NSString *)name {
    
    if (!name) {
        return nil;
    }
    
    return [self viewWithName:name];
}

- (UIView *)viewWithName:(NSString *)aName {
    
    if (!aName) {
        return nil;
    }
    
    if ([self.yn_viewName isEqualToString:aName]) {
        return self;
    }
    
    for (UIView *subview in self.subviews) {
        UIView *theView = [subview yn_viewNamed:aName];
        if (theView) {
            return theView;
            break;
        }
    }
    
    return nil;
}

@end
