require 'rspec/autorun'
require_relative 'arrays_search.rb'
require 'benchmark'

#*************************************************************************
# Tests
#*************************************************************************
describe ArraySearch do
  before(:context) do
    # Element 3 in index #10
    @array = [0,0,0,0,0,0,0,0,0,0,3,0]
    puts "\n\n****************    Tests     ******************"
  end

  it "simple_search" do
      expect(ArraySearch::simple_search(@array, 3)).to eq(10)
  end

  it "binary_search" do
    expect(ArraySearch::bsearch(@array, 3)).to eq(10)
  end

  it "bsearch_divide_and_conquer" do
    expect(ArraySearch::bsearch_divide_and_conquer(@array, 3)).to eq(10)
  end
end


#*************************************************************************
# Benchmarks
#*************************************************************************

puts "\n\n****************  Benchmarks  ******************"
Benchmark.bm(29) do |x|
  n = 50_000
  target = n/3

  array = []

  x.report("Create sorted array: ")     {for i in 1..n; array.append(i); end }
  x.report("Simple Search: ")           {ArraySearch::simple_search(array, target)}
  x.report("Binary Search: ")           {ArraySearch::bsearch(array, target)}
  x.report("Recursive Binary Search: ") {ArraySearch::bsearch_divide_and_conquer(array, target)}
end