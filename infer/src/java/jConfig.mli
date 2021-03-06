(*
 * Copyright (c) 2017 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open Javalib_pack

val string_cl : string

val class_cl : string

val obj_type : JBasics.value_type

val boolean_code : string

val byte_code : string

val char_code : string

val double_code : string

val float_code : string

val int_code : string

val long_code : string

val short_code : string

val class_code : string -> string

val boolean_st : string

val byte_st : string

val char_st : string

val double_st : string

val float_st : string

val int_st : string

val long_st : string

val short_st : string

val constructor_name : string

val void : string

val this : Mangled.t

val infer_undefined_cl : string

val clone_name : string

val field_cst : string

val field_st : Mangled.t

val infer_builtins_cl : string

val infer_array_cl : string

val npe_cl : string

val out_of_bound_cl : string

val cce_cl : string
