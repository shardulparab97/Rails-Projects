#Finding the largest Item in a ruby array
#also using benchmark
require 'benchmark'
arr=Array.new(1000){rand 1000}



def max_ele(arr)
  new_max=0

  arr.each do |i|
    if i>new_max
      new_max=i
    end
  end

  p new_max
end

#using benchmark
Benchmark.bm(10) do |x|
x.report('Each :'){max_ele(arr)}
  x.report("Sorted :"){p arr.sort.last} #observed printing takes lots of time
  x.report("Max: "){p arr.max}
end