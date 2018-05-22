

def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |description, sec_description| 
    sec_description.each do |key, name|
      name.each do |el| 
        organized[el] = {} 
      end  
    end
  end
organized.each do |bird, stats|
  data.each do |key, value|
    value.each do |attribute, array|
        names_array = []
        names_array << attribute.to_s if array.include?(bird)
        stats[key] = names_array 
    end
  end
end  
  organized
end