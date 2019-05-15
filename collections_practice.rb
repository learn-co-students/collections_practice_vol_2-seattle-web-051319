# your code goes here
require 'pry'

def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  new_array = []
  array.collect do |word|
    #binding.pry
    if word.include?("a")
    new_array << word
    end
  end
  new_array
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.keep_if {|element| element.to_s == element}
end

def count_elements(array)
  new_array = array.each_with_index do |element, index|
    binding.pry
    if element == array[index+1]
      array.delete[index]
      element[:count] = 2
    else
      element[:count] = 1
    end
  end
  new_array
end

def merge_data(array_one, array_two)

end

def find_cool(array)

end

def organize_schools(hash)

end
