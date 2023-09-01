require "rspec/autorun"
require "benchmark"
require_relative "arrays_sort.rb"

describe ArraySort do

    before(:context) do
        @array = [66,99,33,22,11,7,3,2,1]
        @sorted_array = [1,2,3,7,11,22,33,66,99]
    end

    it "quick_sort" do
        expect(ArraySort.quick_sort(@array)).to eq(@sorted_array)
    end

    it "selection_sort" do
        expect(ArraySort.selection_sort(@array)).to eq(@sorted_array)
    end
end


#*************************************************************************
# Benchmarks
#*************************************************************************

puts "\n\n****************  Benchmarks  ******************"
Benchmark.bm(29) do |x|
  n = 5_000

  array = []

  x.report("Create unsorted array: ")       {for i in 1..n; array.append(rand(1..100)); end }
  x.report("Quick Sort: ")                  {a = array; ArraySort::quick_sort(a)}
  x.report("Selection Sort: ")              {a = array; ArraySort::selection_sort(a)}
end