// RUN: %dafny /compile:0 "%refmanexamples/Example-Old2.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
