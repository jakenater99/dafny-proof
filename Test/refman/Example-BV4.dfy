// RUN: %dafny /compile:0 "%refmanexamples/Example-BV4.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
