

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, v), result|
    v.each do |value, names|
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
      end  
    end 
  end  
end