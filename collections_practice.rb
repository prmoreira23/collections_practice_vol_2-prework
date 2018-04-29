require 'pry'
# your code goes here
def begins_with_r(tools)
    tools.each do |tool|
        return false if !tool.downcase.start_with?('r')
    end
    return true
end

def contain_a(elements)
    elements.select do |element|
        element.include?("a")
    end
end

def first_wa(list)
    list.find do |element|
        element.to_s.start_with?("wa")
    end
end

def remove_non_strings(arr)
    i = 0
    while i < arr.size
        if !arr[i].instance_of? String
            arr.delete_at(i)
            i -= 1
        end
        i += 1
    end
    arr
end

def count_elements(arr)
    new_dic = {}
    arr.each do |dic|
        new_dic[dic[:name]] = new_dic.fetch(dic[:name], 0) + 1
    end
    answer = []
    new_dic.each do |key, value|
        answer.push({name: key, count: value})
    end
    answer
end

def merge_data(keys, data)

    keys.collect do |dict|
        dict.merge(data[0][dict[:first_name]])
    end

end

def find_cool(cool)
    cool.select do |dict|
        dict[:temperature] && dict[:temperature] == "cool"
    end
end

def organize_schools(schools)
    array = {}
    locations = get_schools_locations(schools)
    locations.each do |location|
        array[location] = get_schools_by_city(schools, location)
    end
    array
end

def get_schools_locations(schools)
    schools.collect {|k, v| v[:location]}.uniq!
end

def get_schools_by_city(schools, city)
    schools.select {|k, v| v[:location] == city}.keys
end
