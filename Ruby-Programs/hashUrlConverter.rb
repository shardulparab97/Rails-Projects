class Hash
  def param_converter
    self.map { |i| i * "=" }* "&" #multiplication makes it a string by default
  end
end

hsh={:team => "India" , :captain => "MS Dhoni"}
p hsh.param_converter

#o/p will be "team=India&captain=MS Dhoni"