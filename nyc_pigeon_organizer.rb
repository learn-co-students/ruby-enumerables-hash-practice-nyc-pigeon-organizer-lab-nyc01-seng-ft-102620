require 'pry'

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, name|
      name.each do |name|
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
end


# male_pigeons = []
#   female_pigeons =[]
#   data[:gender][:male].each {|i| male_pigeons << i}
#   data[:gender][:female].each {|i| female_pigeons << i}
  
  
#   all_pigeons = male_pigeons.concat(female_pigeons)
  
#   new_pigeon_hash = all_pigeons.product([nil]).to_h
#   binding.pry