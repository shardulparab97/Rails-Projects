class Array
  def bubble_sort
    n=self.length

    loop do
      swapped=false
      (n-1).times do |i|
        if(self[i]>self[i+1])
            #temp=self[i]
            #self[i]=self[i+1]
            #self[i+1]=temp
          self[i],self[i+1]=self[i+1],self[i]
          swapped=true
        end
      end
      break if(!swapped)
    end
    return self
  end
end

arr=[10,20,5,6]
p arr.bubble_sort