// RUN: %dafny /compile:0 "%refmanexamples/Example-Old3.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
