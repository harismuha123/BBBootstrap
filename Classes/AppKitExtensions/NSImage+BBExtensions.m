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

//  Created by Levi Nunnink on 2/14/13.
//  Copyright (c) 2013 Culturezoo LLC. All rights reserved.
//

#import "NSImage+BBExtensions.h"

@implementation NSImage (BBExtensions)

- (NSData *) PNGRepresentation
{
    // Create a bitmap representation from the current image
    
    [self lockFocus];
    NSBitmapImageRep *bitmapRep = [[NSBitmapImageRep alloc] initWithFocusedViewRect:NSMakeRect(0, 0, self.size.width, self.size.height)];
    [self unlockFocus];
    
    return [bitmapRep representationUsingType:NSPNGFileType properties:Nil];
}

+ (NSImage*)imageWithLeftCap:(NSImage*)leftCap middle:(NSImage*)middle rightCap:(NSImage*)rightCap
{
    NSSize imageSize = (NSSize){
        leftCap.size.width + middle.size.width + rightCap.size.width,
        leftCap.size.height
    };
    
    NSRect imageFrame = (NSRect) {
        0, 0, imageSize.width, imageSize.height
    };
    
    NSImage *rendered = [[NSImage alloc] initWithSize:imageSize];
    [rendered lockFocus];
    
    NSDrawThreePartImage(imageFrame, leftCap, middle, rightCap, NO, NSCompositeSourceOver, 1.0, NO);
    
    [rendered unlockFocus];
    
    return rendered;
}

@end