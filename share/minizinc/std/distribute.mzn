include "fzn_distribute.mzn";
include "fzn_distribute_reif.mzn";

/** @group globals.counting
  Requires that \a card[\p i] is the number of occurrences of \a value[\p i] in
  \a base. The values in \a value need not be distinct.
*/
predicate distribute(array[int] of var int: card,
                     array[int] of var int: value,
                     array[int] of var int: base) =
    assert(index_set(card) == index_set(value),
        "distribute: card and value arrays must have identical index sets",
        fzn_distribute(card, value, base)
    );
