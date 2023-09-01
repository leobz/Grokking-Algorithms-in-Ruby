# Grokking Algorithms in Ruby

## Description
This repository contains Ruby implementations of the algorithms presented in the book "Grokking Algorithms" by Aditya Bhargava. The purpose of this repository is to provide a code reference for those who are learning algorithms and data structures in Ruby, and for those who are preparing for technical interviews.

## Content
The repository includes Ruby implementations of the following algorithms and data structures:

1. Binary Search
2. Sorting (Quick Sort, Selection Sort, etc.)
3. Data Structures (Lists, Stacks, Queues, etc.)
4. Recursive Algorithms
5. Graph Search Algorithms

## Usage
Each algorithm or data structure is implemented in a separate file. To use one of the algorithms or data structures, simply include the corresponding file in your code:

```ruby
require_relative 'path/to/file.rb'
```

For example, to use the quick sort algorithm, you would include the corresponding file like this:

```ruby
require_relative 'path/to/arrays_sort.rb'

ArraySort.quick_sort(array)
```

Then, you could use the algorithm or data structure in your code as shown in the usage example in the corresponding file.

## Testing
To run the tests, you will need to have `rspec` installed. If you do not have it installed, you can install it with the following command:

```
gem install rspec
```

Once you have `rspec` installed, you can run the tests using the following command in the root of your project:

```
rspec
```

The tests also include benchmarks that will show you the time it takes for each algorithm to run.

```bash
$ ruby test_arrays_sort.rb 


****************  Benchmarks  ******************
                                    user     system      total        real
Create unsorted array:          0.000643   0.000000   0.000643 (  0.000641)
Quick Sort:                     0.002163   0.000000   0.002163 (  0.002161)
Selection Sort:                 0.486954   0.000073   0.487027 (  0.487340)
..

Finished in 0.00314 seconds (files took 0.5377 seconds to load)
2 examples, 0 failures

```

## Contributions
Contributions are welcome. If you find a bug or an improvement that can be made, do not hesitate to open an Issue or a Pull Request.
