// RUN: %dafny /compile:0 "%refmanexamples/Example-BV2.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
