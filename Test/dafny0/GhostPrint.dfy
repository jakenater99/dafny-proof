// RUN: %dafny /dafnyVerify:0 /compile:0 /env:0 /dprint:"%t.dprint.dfyp" "%s"
// RUN: %dafny /dafnyVerify:0 /compile:0 /env:0 "%t.dprint.dfyp" > "%t"
// RUN: %diff "%s.expect" "%t"

method M() {
  ghost var h := var ta := F(); 5;
  var j := ghost var tb := F(); 5;
  assert h == j;
}

function F(): int { 5 }

