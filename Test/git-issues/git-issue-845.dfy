// RUN: %dafny /useBaseNameForFileName /compile:0 %S/git-issue-845.dfyp > "%t"
// RUN: %diff "%s.expect" "%t"

/* blah blah /* blah */
method foo() returns (r:bool) { assert true == false; }


