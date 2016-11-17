class String
  define_method(:anagrams) do |list|
    output=[]
    original = self.split("").sort
    for i in list.split(",")
      if (original == i.split("").sort)
        output.push(i)
      end
    end
    output.join(",")
  end
end
