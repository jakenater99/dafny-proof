// RUN: %dafny /compile:1 "%s"                          > "%t"
// RUN: %dafny /compile:1 "%s" %S/"git-issue-289b.dfyp" >> "%t"
// RUN: %dafny /compile:1      %S/"git-issue-289b.dfyp" >> "%t"
// RUN: %diff "%s.expect" "%t"

include "git-issue-289b.dfyp"
