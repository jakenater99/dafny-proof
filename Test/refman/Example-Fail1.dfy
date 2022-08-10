// RUN: %dafny /compile:0 "%refmanexamples/Example-Fail1.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
