require "pry"

def begins_with_r(args)
  args.all? {|arg| arg.start_with?("r")}
end

def contain_a(args)
  has_a = []
  args.each {|arg| has_a << arg if arg.include?("a")}
  has_a
end

def first_wa(args)
  args.find {|arg| arg.start_with?("wa") if arg.instance_of? String}
end

def remove_non_strings(args)
  args.delete_if {|arg| (arg.instance_of? String) == false}
end

def count_elements(data)
  count_array = []
end

def merge_data(keys, data)
  merged = []
  keys.each do |hash1|
    data.each do |hashes2|
      hashes2.each do |person, attributes|
        if hash1[:first_name] == person
          merged << hash1.merge(attributes)
        end
      end
    end
  end
  merged
end

def find_cool(data)
  is_cool = []
  
  data.each do |person|
    if person[:temperature] == "cool"
      is_cool << person
    end
  end
  is_cool
end

def count_elements(names)
  count_array = names.uniq
  count_array.each do |name|
    name[:count] = names.count(name)
  end
  count_array
end

def organize_schools(schools)
  schools_by_location = {}
  
  schools.each do |school, info|
    if schools_by_location.has_key?(info[:location])
      schools_by_location.each do |city, schools|
        if city == info[:location]
          schools_by_location[city] << school
        end
      end
    else
      schools_by_location[info[:location]] = [school]
    end
  end
  schools_by_location
end