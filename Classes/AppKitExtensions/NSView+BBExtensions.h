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

@interface NSView (BBExtensions)

///-------------------------------------------
/// @name Positioning, location and dimensions
///-------------------------------------------

/**
 Calculate the rectangle resulting of centering `rect` in `outerRect`.
 
 @param rect Rectangle to center.
 @param outerRect Outter rectangle. `rect` will be centered relatively to this rectangle.
 
 @return A `CGRect` containing the result of the operation.
 */
+ (CGRect)center:(CGRect)rect inRect:(CGRect)outerRect;

/**
 Calculate the rectangle resulting of centering `rect`'s `x` axis in `outerRect`.
 
 @param rect Rectangle to center.
 @param outerRect Outer rectangle. `rect`'s `x` coordinates will be centered relatively to this rectangle.
 
 @return A `CGRect` containing the result of the operation.
 */
+ (CGRect)center:(CGRect)rect horizontallyInRect:(CGRect)outerRect;

/**
 Calculate the rectangle resulting of centering `rect`'s `y` axis in `outerRect`.
 
 @param rect Rectangle to center.
 @param outerRect Outer rectangle. `rect`'s `y` coordinates will be centered relatively to this rectangle.
 
 @return A `CGRect` containing the result of the operation.
 */
+ (CGRect)center:(CGRect)rect verticallyInRect:(CGRect)outerRect;

/**
 Center current view in `rect`.
 
 This method **will change** the current view's frame.
 
 @param rect Rectangle relative to which the current view's frame should be centered.
 */
- (instancetype)centerInRect:(CGRect)rect;

/**
 Center current view's `x` coordinates in `rect`.
 
 This method **will change** the current view's frame.
 
 @param rect Rectangle relative to which the current view's `x` coordinates should be centered.
 */
- (instancetype)centerHorizontallyInRect:(CGRect)rect;

/**
 Center current view's `y` coordinates in `rect`.
 
 This method **will change** the current view's frame.
 
 @param rect Rectangle relative to which the current view's `y` coordinates should be centered.
 */
- (instancetype)centerVerticallyInRect:(CGRect)rect;


/**
 Calculate the result of centering the current view's frame in a given rectangle.
 
 This method does **not** modify the current view's frame.
 
 @param rect Rectangle relative to which the current view's frame should be centered.
 
 @return A `CGRect` containing the result of the operation.
 */
- (CGRect)rectCenteredInRect:(CGRect)rect;

/**
 Move the current view a given instance.
 
 This method changes the view's `frame.origin` by adding the input `movement` to the current `frame.origin`. You may
 use negative values to move the view up/left or positive values to move it down/right.
 
 @param movement Amount of movement in `x` and `y` coordinates.
 */
- (instancetype)move:(CGSize)movement;

/**
 Move the current view to a given point.
 
 This method changes the view's `frame.origin` property.
 
 @param point Target point.
 */
- (instancetype)moveTo:(CGPoint)point;

- (instancetype)moveToX:(CGFloat)x;

- (instancetype)moveToY:(CGFloat)y;

#pragma mark Quick frame changes

@property(assign, nonatomic) CGPoint origin;
@property(assign, nonatomic) CGFloat x;
@property(assign, nonatomic) CGFloat y;
@property(assign, nonatomic) CGSize size;
@property(assign, nonatomic) CGFloat width;
@property(assign, nonatomic) CGFloat height;

@end
