// RUN: %dafny /compile:0 "%refmanexamples/Example-BV.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
