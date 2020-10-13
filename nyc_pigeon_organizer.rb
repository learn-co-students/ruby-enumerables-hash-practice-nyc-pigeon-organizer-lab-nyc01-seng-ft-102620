require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = data.each_with_object({}) do |(key, value), final_hash|
    value.each do |inner_key, pigeons|
      pigeons.each do |names|
        if !final_hash[names]
          final_hash[names] = {}
    end
    if !final_hash[names][key]
      final_hash[names][key] = []
    end 
    final_hash[names][key].push(inner_key.to_s)
    end 
  end
end 
end