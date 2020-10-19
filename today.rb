require 'pry'

data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender =>
  {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives =>
  {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
today(data)

def today (data)
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
