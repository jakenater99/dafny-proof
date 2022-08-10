// RUN: %dafny /verifyAllModules /allocated:1 /compile:0 /dprint:"%t.dprint.dfyp" "%s" > "%t"
// RUN: %dafny /verifyAllModules /allocated:1 /noVerify "%t.dprint.dfyp" >> "%t"
// RUN: %diff "%s.expect" "%t"
include "../../dafny0/DirtyLoops.dfyp"
