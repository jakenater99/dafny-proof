// RUN: %dafny /compile:0 "%refmanexamples/Example-BV4a.dfy" > "%t"
// RUN: %diff "%s.expect" "%t"
