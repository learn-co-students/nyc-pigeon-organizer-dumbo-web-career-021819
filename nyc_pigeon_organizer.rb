pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  new_bird_hash = {}
  data[:gender].each do |gender,names|
    names.each do |x|
    new_bird_hash[x] = {}
  end
end
new_bird_hash.each do |x,y|
    y[:color] = []
    y[:gender] = []
    y[:lives] = []
end
data[:color].each do |colour,names|
#puts "#{colour} with #{names}"
  names.each do |x|
    new_bird_hash.keys.each do |s|
      if x == s
    #  puts "#{colour} and #{x}"
      new_bird_hash[x][:color] << colour.to_s
      end
    end
   end
end
data[:gender].each do |gender,names|
#puts "#{gender} with #{names}"
  names.each do |x|
    new_bird_hash.keys.each do |s|
      if x == s
    #  puts "#{gender} and #{x}"
      new_bird_hash[x][:gender] << gender.to_s
      end
    end
   end
end
data[:lives].each do |lives,names|
#puts "#{lives} with #{names}"
  names.each do |x|
    new_bird_hash.keys.each do |s|
      if x == s
    #  puts "#{lives} and #{x}"
      new_bird_hash[x][:lives] << lives.to_s
      end
    end
   end
end
new_bird_hash


end
