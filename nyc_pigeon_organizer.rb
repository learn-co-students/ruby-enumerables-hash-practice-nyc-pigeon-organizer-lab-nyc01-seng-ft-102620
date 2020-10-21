require 'pry'
      
def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = data.each_with_object({}) do |(k, v), re_data| 
    v.each do |k2, v2|
      v2.each do |name|
        if !re_data[name]
          re_data[name] = {}
        end
        if !re_data[name][k]
          re_data[name][k] = []
        end 
        re_data[name][k] << k2.to_s
         
      end

    end 
  #binding.pry
  end 
  
end
