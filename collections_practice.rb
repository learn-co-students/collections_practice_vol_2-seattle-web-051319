require "pry"

def begins_with_r(tools)
	tools.each {|tool| return false if tool[0] != "r"}
	true
end	

def contain_a(elements)
	has_a = []
	elements.each {|element| has_a.push(element) if element.chars.include?("a")}
	has_a
end

def first_wa(elements)
	elements.each {|element| return element if element[0..1] == "wa"}
end

def remove_non_strings(array)
	array.map {|item| item == item.to_s ? item : nil}.compact
end

def count_elements(array)
	new_array = []
	array.uniq.each do |item|
		counter = 0
		array.each do |element|
			counter += 1 if element == item
		end	
		item[:count] = counter
		new_array.push(item)
	end
	new_array
end

def merge_data(struc1, struc2)
	#bloated, inelegant mess that somehow passes tests
	#return and redo when time allows
	new_struc = {}
	new_struc2 = {}
	index = 0
	
	struc1.each do |item|
		item.each do |key, value|
			if struc2[0].keys.include?(value)
				new_struc[value] ||= {}
				new_struc[value][:first_name] = value
			end	
		end
		
		item.each do |key, value|
			if !struc2[0].keys.include?(value) && new_struc.values[index].to_a.size == 1
				hash = {key => value}
				new_struc.each do |k, v|
					value = v.merge(hash)
				end	
				new_struc.values[index].replace(value)
				index += 1
			end	
		end	
	end
	
	struc2.each do |item|
		item.each do |key, value|
		if new_struc.keys.include?(key)
			new_struc2[key] = new_struc[key].merge(value)
		end	
		end
	end	
	
	new_struc2.values
end

def find_cool(list)
	list.map {|person| person[:temperature] == "cool" ? person : nil}.compact
end

def organize_schools(list)
	organized = {}
	list.each do |school, city|
		organized[city[:location]] ||= []
		organized[city[:location]].push(school)
	end
	organized
end