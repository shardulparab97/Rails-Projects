require 'nmatrix'
class Baseball

end

#p Baseball.new.swing #just like that will give an undefined method

class Baseball
  def swing
     "Homerun"
  end
end

p Baseball.new.swing

class Baseball
  def swing
    "Strike "
  end
end

p Baseball.new.swing

#takes the latest example in this case
