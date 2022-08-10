// RUN: %dafny /compile:0 "%refmanexamples/Example-Fail2.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"
