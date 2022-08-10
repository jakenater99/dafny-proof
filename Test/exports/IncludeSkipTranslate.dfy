// RUN: %dafny /env:0 /dprint:"%t.dfyp" /compile:0 "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

include "ExportRefinement.dfyp"

module Z {
  lemma Test()
  ensures 1 < 2 // this should be the only verification condition produced, plus one top-level one from ExportRefinement
  {
  }
}
