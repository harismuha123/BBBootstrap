//
// Copyright 2013 BiasedBit
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//  Created by Levi Nunnink on 6/27/13.
//  Copyright (c) 2013 Culturezoo LLC. All rights reserved.
//

#import "CALayer+BBExtensions.h"

@implementation CALayer (Annotations)

#pragma mark Positioning, location and dimensions

+ (CGRect)center:(CGRect)rect inRect:(CGRect)outerRect
{
    CGRect r;
    r.size = rect.size;
    r.origin.x = floorf((outerRect.size.width - rect.size.width) / 2.0 + outerRect.origin.x);
    r.origin.y = floorf((outerRect.size.height - rect.size.height) / 2.0 + outerRect.origin.y);
    
    return r;
}

+ (CGRect)center:(CGRect)rect horizontallyInRect:(CGRect)outerRect
{
    CGRect r;
    r.size = rect.size;
    r.origin.x = floorf((outerRect.size.width - rect.size.width) / 2.0 + outerRect.origin.x);
    r.origin.y = rect.origin.y;
    
    return r;
}

+ (CGRect)center:(CGRect)rect verticallyInRect:(CGRect)outerRect
{
    CGRect r;
    r.size = rect.size;
    r.origin.x = rect.origin.x;
    r.origin.y = floorf((outerRect.size.height - rect.size.height) / 2.0 + outerRect.origin.y);
    
    return r;
}

- (instancetype)centerInRect:(CGRect)rect
{
    self.frame = [CALayer center:self.frame inRect:rect];
    return self;
}

- (instancetype)centerHorizontallyInRect:(CGRect)rect
{
    self.frame = [CALayer center:self.frame horizontallyInRect:rect];
    return self;
}

- (instancetype)centerVerticallyInRect:(CGRect)rect
{
    self.frame = [CALayer center:self.frame verticallyInRect:rect];
    return self;
}

- (CGRect)rectCenteredInRect:(CGRect)rect
{
    return [CALayer center:self.frame inRect:rect];
}

- (instancetype)move:(CGSize)movement
{
    CGRect targetFrame = self.frame;
    targetFrame.origin.x += movement.width;
    targetFrame.origin.y += movement.height;
    
    self.frame = targetFrame;
    
    return self;
}

- (instancetype)moveTo:(CGPoint)point
{
    CGRect targetFrame = self.frame;
    targetFrame.origin = point;
    self.frame = targetFrame;
    
    return self;
}

- (instancetype)moveToX:(CGFloat)x
{
    [self moveTo:CGPointMake(x, self.frame.origin.y)];
    return self;
}

- (instancetype)moveToY:(CGFloat)y
{
    [self moveTo:CGPointMake(self.frame.origin.x, y)];
    return self;
}

#pragma mark Quick frame changes

- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

@end
