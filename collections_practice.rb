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
  array.each_with_index do |element, index|
    element[:count] = 1
    if element[:name] == array[index-1][:name]
      array.delete_at(index)
      array[index-1][:count] += 1
    end
  end
  array.each do |element|
    if element[:count] == nil
      element[:count] = 1
    end
  end
end


def merge_data(array_one, array_two)
  new_array = []
  new_hash = {}
  new_hash_two = {}
  array_two_keys = array_two[0].keys
    array_one.each do |info|
      merging_hashes = info.merge(array_two[0][info[:first_name]])
      if info[:first_name] == array_two_keys.find {|name| name}
        new_hash = merging_hashes
      else
        new_hash_two = merging_hashes
      end
    end
  new_array << new_hash
  new_array << new_hash_two
  new_array
end

def find_cool(array)
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_array << element
    end
  end
  new_array
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |class_name, location|
    if new_hash[location.values.join(" ")] == nil
      new_hash[location.values.join(" ")] = [class_name]
    else
      new_hash[location.values.join(" ")] << class_name
    end
  end
  new_hash
end
