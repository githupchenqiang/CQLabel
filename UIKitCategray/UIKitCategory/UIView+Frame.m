//
//  UIView+Frame.m
//  UIKitCategray
//
//  Created by chenq@kensence.com on 2018/3/21.
//  Copyright © 2018年 chenq@kensence.com. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGFloat)x
{
    return self.frame.origin.x;
}

-(void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

-(void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}


- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

-(void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

-(void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}


- (CGFloat)width
{
    return self.frame.size.width;
}

-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}


- (CGFloat)height
{
    return self.frame.size.height;
}

-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}


- (CGFloat)centerX
{
    return self.center.x;
}


-(void)setCenterX:(CGFloat)centerX
{
    self.center = CGPointMake(centerX, self.center.y);

}


- (CGFloat)centerY
{
    return self.center.y;
}

-(void)setCenterY:(CGFloat)centerY{
    self.center = CGPointMake(self.center.x, centerY);
}


@end
