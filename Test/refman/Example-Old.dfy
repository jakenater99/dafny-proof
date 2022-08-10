// RUN: %dafny /compile:0 "%refmanexamples/Example-Old.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
