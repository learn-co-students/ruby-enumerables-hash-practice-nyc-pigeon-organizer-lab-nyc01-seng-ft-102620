def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(k,v), new_hash|
    v.each do |ik, iv|
      iv.each do |names|
        if !new_hash[names]
          new_hash[names] = {}
        end
        if !new_hash[names][k]
          new_hash[names][k] = []
        end
        new_hash[names][k].push(ik.to_s)
      end
    end
  end
end
