require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!

   pigeon_list = {}
  # data.each do |key_cgl, value_cgl|  #pulls each key for color, gender, location
  #   key_cgl.each do |key_detail, value_detail|  #pulls each key for detailed information
  #   end
  # end

  final_results = data.each_with_object({}) do |(key_cgl,value_cgl), final_array|
    #final_array[keys] = value  + 3
    value_cgl.each do | key_detail, value_detail|
      value_detail.each do |inner_array|
        #binding.pry
        # pigeon_list = {inner_array: key_cgl: key_detail:}
        # binding.pry
        if !final_array[inner_array]  #if there is no final array with this name,  we want to create a value, empty hash
        #  binding.pry
          final_array[inner_array] = {}
        #  binding.pry
        end
        if !final_array[inner_array][key_cgl]
          final_array[inner_array][key_cgl] = []
          #binding.pry
        end
      #  binding.pry
        final_array[inner_array][key_cgl].push(key_detail.to_s)
      #  binding.pry
      end
    end
  end
#  binding.pry


end
