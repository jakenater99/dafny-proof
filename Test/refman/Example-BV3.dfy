// RUN: %dafny /compile:0 "%refmanexamples/Example-BV3.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
