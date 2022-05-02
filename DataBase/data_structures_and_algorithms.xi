Algorithms .
  Sorting Algorithms .
    Algorithm Classifications .
      Stable vs. Unstable .
      . Stable sort preserves the `original order` of the input
        array whenever encounters items of the same rank.
      . Stable algorithms:
        * Merge sort;
        * Timsort;
        * Counting Sort;
        * Insertion Sort;
        * Bubble Sort.
      . Unstable algorithms:
        * [#Quicksort];
        * Heapsort;
        * Selection Sort;
      In Place vs. Not in Place .
      . In place sort uses `small fixed` (not linear) amount of
        `extra space` to perform sorting. 
      . In Place algorithms:
        * [#Quicksort];
        * Insertion Sort;
        * Bubble Sort.
        * Heapsort;
        * Selection Sort;
      . Not In-Place algorithms:
        * Merge sort;
      By Comparison vs. Not by Comparison .
      . Sorting algorithms that work By Comparison use comparison
        operations to sort an array
      . All Comparison Sorts cannot run faster than nlog(n)
    
    [Quicksort#] .
    . Divide & Conquer algorithm.
    . In place sorting.
    . All the work is in divide step.
    . 3 different variants of the algorithms.
      Algorithm: .
      . |Divide:| Pick random element {x } (pivot)
      . Partition array int {L, E, G}, where
        * {L }contains all elements less than x;
        * {E }contains all elements equal to x;
        * {G }contains all elements greater than x.
      . |Recur:| Quicksort {L }and {G }.
      . |Conquer:| Join {L, E} and {G }.