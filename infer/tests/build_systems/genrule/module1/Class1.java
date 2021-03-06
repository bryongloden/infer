/*
 * Copyright (c) 2017 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

package genrule.module1;

import genrule.annotations.Nullable;

public class Class1 {

  @Nullable
  public static String returnsNull() {
    return null;
  }

  void localNPE1() {
    Object obj = null;
    obj.toString();
  }

}
