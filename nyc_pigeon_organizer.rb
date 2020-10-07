require 'pry'

# write your code here!
  
  #create a hash where pigeon names are the keys, with each name pointing to a hash of their attributes
  
  #collecting each pigeon by name and insert it as the key of a new hash 
  
  #keys should have :color, :gender, and :lives
  
  #first step - make theo, peter jr, and lucky keys 

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array| 
    # binding.pry
    value.each do |inner_key, names|
    names.each do |name|
      if !final_array[name]
        final_array[name] = {}
      end 
      if !final_array[name][key]
          !final_array[name][key] = [] 
      end 
      final_array[name][key].push(inner_key.to_s)
    end
  end 
end  
  # binding.pry 
end
