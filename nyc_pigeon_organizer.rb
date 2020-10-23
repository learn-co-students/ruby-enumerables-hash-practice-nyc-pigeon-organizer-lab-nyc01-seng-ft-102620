def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = data.each_with_object({}) do |(key,element), pigeon_list|
    element.each do |key2, element2|
      element2.each do |name|
        if(!pigeon_list[name])
          pigeon_list[name] = {}
        end 
        if(!pigeon_list[name][key])
          pigeon_list[name][key] = []
        end 
        pigeon_list[name][key]<<(key2.to_s)
      end 
    end 
  end 
  pigeon_list
end
