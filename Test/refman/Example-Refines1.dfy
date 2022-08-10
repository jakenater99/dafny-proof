// RUN: %dafny /compile:0 "%refmanexamples/Example-Refines1.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
