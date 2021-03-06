/*
 * Copyright (c) 2017 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */
#include <unordered_map>

#import <Foundation/NSObject.h>

struct SomeStruct {
  NSString* someLabel;
};

@interface SomeButton : NSObject

+ (instancetype)newWithStruct:(SomeStruct)aStruct
                          map:(const std::unordered_map<int, NSString*>&)aMap
                       object:(id)anObject
                       number:(int)n;

@end

SomeButton* buttonComponent(void);
SomeButton* buttonComponent(void) {
  // flagging passing empty struct
  return [SomeButton newWithStruct:{} map:{} object:nil number:0];
};

SomeButton* anotherButtonComponent(void);
SomeButton* anotherButtonComponent(void) {
  return [SomeButton newWithStruct:{.someLabel = @"hi"}
                               map:{
                                 { 1, @"some title" }
                               }
                            object:@"a string object"
                            number:5];
};
