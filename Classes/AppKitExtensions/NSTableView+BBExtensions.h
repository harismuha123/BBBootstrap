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
//

//
//  Created by Bruno de Carvalho (@biasedbit, http://biasedbit.com)
//  Copyright (c) 2013 BiasedBit. All rights reserved.
//

#pragma mark -

@interface NSTableView (BBExtensions)


///----------------
/// @name Shortcuts
///----------------

/**
 Perform a block of updates between calls to `beginUpdates` and `endUpdates`.
 
 @param block Block of code that should contain the updates to perform on the `UITableView`
 */
- (void)updateWithBlock:(void (^)(NSTableView* tableView))block;

- (void)insertRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation;

- (void)reloadRowAtIndexPath:(NSIndexSet*)indexSet withRowAnimation:(NSTableViewAnimationOptions)animation;

- (void)reloadRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation;

- (void)deleteRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation;

- (void)deleteSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation;

- (void)reloadSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation;

@end
