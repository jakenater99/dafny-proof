
// This file only exists to include these examples as a test case.

include "Example-TwoState-Increasing.dfyp"
include "Example-TwoState-Caller.dfyp"
include "Example-TwoState-Diff.dfyp"
include "Example-TwoState-DiffAgain.dfyp"
include "Example-TwoState-SeqSum.dfyp"
include "Example-TwoState-EtaExample.dfyp"

class Cell {
  var data: int
  constructor (x: int)
    ensures data == x
  {
    data := x;
  }
}
