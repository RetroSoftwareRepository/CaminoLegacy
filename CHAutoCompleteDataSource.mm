/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*-
*
* The contents of this file are subject to the Mozilla Public
* License Version 1.1 (the "License"); you may not use this file
* except in compliance with the License. You may obtain a copy of
* the License at http://www.mozilla.org/MPL/
*
* Software distributed under the License is distributed on an "AS
* IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
* implied. See the License for the specific language governing
* rights and limitations under the License.
*
* The Original Code is the Mozilla browser.
*
* The Initial Developer of the Original Code is Netscape
* Communications Corporation. Portions created by Netscape are
* Copyright (C) 2002 Netscape Communications Corporation. All
* Rights Reserved.
*
* Contributor(s):
*   David Hyatt <hyatt@netscape.com> (Original Author)
*/

#import <AppKit/AppKit.h>
#import "CHAutoCompleteDataSource.h"
#include "nsIServiceManager.h"

@implementation CHAutoCompleteDataSource

-(id)init
{
  if ((self = [super init])) {
    mAutoComplete = nsnull;
  }
  return self;
}

-(void)initialize
{
  if (!mAutoComplete) {
    nsCOMPtr<nsIAutoCompleteSession> session =
      do_GetService("@mozilla.org/autocompleteSession;1?type=history");
    mAutoComplete = session;
    if (!mAutoComplete)
      printf("CRAP CRAP!\n");
  }
}

-(int)numberOfRowsInTableView:(NSTableView*)aTableView
{
  return 0;
}

-(id)tableView:(NSTableView*)aTableView objectValueForTableColumn:(NSTableColumn*)aTableColumn row:(int)aRowIndex
{
  return @"";
}

@end
