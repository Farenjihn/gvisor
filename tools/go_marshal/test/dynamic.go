// Copyright 2021 The gVisor Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package test

import "gvisor.dev/gvisor/pkg/marshal/primitive"

// Type12Dynamic is a dynamically sized struct which depends on the
// autogenerator to generate some Marshallable methods for it.
//
// +marshal dynamic
type Type12Dynamic struct {
	X primitive.Int64
	Y []primitive.Int64
}

// SizeBytes implements marshal.Marshallable.SizeBytes.
func (t *Type12Dynamic) SizeBytes() int {
	return (len(t.Y) * 8) + t.X.SizeBytes()
}

// MarshalBytes implements marshal.Marshallable.MarshalBytes.
func (t *Type12Dynamic) MarshalBytes(dst []byte) {
	t.X.MarshalBytes(dst)
	dst = dst[t.X.SizeBytes():]
	for i, x := range t.Y {
		x.MarshalBytes(dst[i*8 : (i+1)*8])
	}
}

// UnmarshalBytes implements marshal.Marshallable.UnmarshalBytes.
func (t *Type12Dynamic) UnmarshalBytes(src []byte) {
	t.X.UnmarshalBytes(src)
	if t.Y != nil {
		t.Y = t.Y[:0]
	}
	for i := t.X.SizeBytes(); i < len(src); i += 8 {
		var x primitive.Int64
		x.UnmarshalBytes(src[i:])
		t.Y = append(t.Y, x)
	}
}

// Type13Dynamic is a dynamically sized struct which depends on the
// autogenerator to generate some Marshallable methods for it.
//
// It represents a string in memory which is preceded by a uint32 indicating
// the string size.
//
// +marshal dynamic
type Type13Dynamic string

// SizeBytes implements marshal.Marshallable.SizeBytes.
func (t *Type13Dynamic) SizeBytes() int {
	return (*primitive.Uint32)(nil).SizeBytes() + len(*t)
}

// MarshalBytes implements marshal.Marshallable.MarshalBytes.
func (t *Type13Dynamic) MarshalBytes(dst []byte) {
	strLen := primitive.Uint32(len(*t))
	strLen.MarshalBytes(dst)
	dst = dst[strLen.SizeBytes():]
	copy(dst[:strLen], *t)
}

// UnmarshalBytes implements marshal.Marshallable.UnmarshalBytes.
func (t *Type13Dynamic) UnmarshalBytes(src []byte) {
	var strLen primitive.Uint32
	strLen.UnmarshalBytes(src)
	src = src[strLen.SizeBytes():]
	*t = Type13Dynamic(src[:strLen])
}
