// RUN: %dafny /compile:0 /verifySnapshots:2 /traceCaching:1 %S/Inputs/Snapshots6.dfyp > "%t"
// RUN: %diff "%s.expect" "%t"
// XFAIL: *
// FIXME : Need to fix the snapshot
