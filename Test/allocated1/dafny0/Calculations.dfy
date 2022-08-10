// RUN: %dafny /verifyAllModules /allocated:1 /compile:0 /print:"%t.print" /dprint:"%t.dprint.dfyp" "%s" > "%t"
// RUN: %dafny /verifyAllModules /allocated:1 /noVerify /compile:0 "%t.dprint.dfyp" >> "%t"
// RUN: %diff "%s.expect" "%t"
include "../../dafny0/Calculations.dfyp"
