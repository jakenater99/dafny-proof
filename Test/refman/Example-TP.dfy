// RUN: %dafny /compile:0 "%refmanexamples/Example-TP.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
