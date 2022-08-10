// RUN: %dafny /compile:0 "%refmanexamples/Example-BV3a.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
