// RUN: %dafny /compile:0 /verifySnapshots:3 /traceCaching:1 %S/Inputs/Snapshots9.dfyp > "%t"
// RUN: %diff "%s.expect" "%t"
