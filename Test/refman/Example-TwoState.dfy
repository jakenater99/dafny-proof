// RUN: %dafny /verifyAllModules /compile:0 "%refmanexamples/Example-TwoState.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
