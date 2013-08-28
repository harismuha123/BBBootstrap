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

#import "NSTableView+BBExtensions.h"



#pragma mark -

@implementation NSTableView (BBExtensions)


#pragma mark Shortcuts

- (void)updateWithBlock:(void (^)(NSTableView* tableView))block
{
    [self beginUpdates];
    block(self);
    [self endUpdates];
}

- (void)insertRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation
{
    NSIndexPath* toInsert = [NSIndexPath indexPathForRow:row inSection:section];
    [self insertRowAtIndexPath:toInsert withRowAnimation:animation];
}

- (void)reloadRowAtIndexPath:(NSIndexSet*)indexSet withRowAnimation:(NSTableViewAnimationOptions)animation
{
    [self reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:animation];
}

- (void)reloadRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation
{
    NSIndexPath* toReload = [NSIndexPath indexPathForRow:row inSection:section];
    [self reloadRowAtIndexPath:toReload withRowAnimation:animation];
}

- (void)deleteRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation
{
    NSIndexPath* toDelete = [NSIndexPath indexPathForRow:row inSection:section];
    [self deleteRowAtIndexPath:toDelete withRowAnimation:animation];
}

- (void)deleteSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation
{
    NSIndexSet* sections = [NSIndexSet indexSetWithIndex:section];
    [self deleteSections:sections withRowAnimation:animation];
}

- (void)reloadSection:(NSUInteger)section withRowAnimation:(NSTableViewAnimationOptions)animation
{
    NSIndexSet* indexSet = [NSIndexSet indexSetWithIndex:section];
    [self reloadSections:indexSet withRowAnimation:animation];
}

@end
