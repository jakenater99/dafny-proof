// RUN: %dafny /compile:0 "%refmanexamples/Example-RM.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
