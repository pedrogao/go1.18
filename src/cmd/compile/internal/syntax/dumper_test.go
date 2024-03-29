// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package syntax

import (
	"testing"
)

func TestDump(t *testing.T) {
	if testing.Short() {
		t.Skip("skipping test in short mode")
	}

	ast, _ := ParseFile(*src_, func(err error) { t.Error(err) }, nil, CheckBranches|AllowGenerics)

	if ast != nil {
		Fdump(testOut(), ast)
	}
}

func TestDump1(t *testing.T) {
	file := "./lab/dowhile/example2/main.go"
	ast, _ := ParseFile(file,
		func(err error) { t.Error(err) }, nil, CheckBranches|AllowGenerics)

	if ast != nil {
		Fdump(testOut(), ast)
	}
}
