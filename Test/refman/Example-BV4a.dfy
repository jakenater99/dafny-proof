// RUN: %dafny /compile:0 "%refmanexamples/Example-BV4a.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
