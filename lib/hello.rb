def hello_t (array)
  #checks if #hello_t has a block somewhere to yield to 
  if block_given?
    i = 0
    #First time through loop = 0, then 1, then so on
    while i < array.length
      #During each step of while loop, i will equal an index of our array
      #We can use this information to yield each successive value in array
      #Yield is saying "Go get the block of code down there, and dont come back unti you're done"
      yield array[i]
      i = i + 1
    end
    array
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
