/******************************************************************************
 *
 *  Copyright 2014 Paphus Solutions Inc.
 *
 *  Licensed under the Eclipse Public License, Version 1.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.eclipse.org/legal/epl-v10.html
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 ******************************************************************************/

#import <Foundation/Foundation.h>
#import "LibreUpdateInstanceIconAction.h"
#import "LibreWebMedium.h"
#import "LibreBotViewController.h"

@implementation LibreUpdateInstanceIconAction

- (void) response: (LibreWebMedium*) config {
    [((LibreBotViewController*)self.controller) updateIconResponse: config];
}

- (void) error: (NSString*) error {
    [super error: error];
    [((LibreBotViewController*)self.controller) stopBusy];
}

@end