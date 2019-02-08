require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pidgeons = {}
  data.each do |top_keys, all_details|
    all_details.each do |key, value|
      value.each do |names|
        pidgeons[names] = { :color => [], :gender => [], :lives => [] }
      end
    end
  end

  data[:color].each do |key, value|
    value.each do |names|
      if data[:color][key].include?(names)
        pidgeons[names][:color] << key.to_s
      end
    end
  end

  data[:gender].each do |key, value|
    value.each do |names|
      if data[:gender][key].include?(names)
        pidgeons[names][:gender] << key.to_s
      end
    end
  end

  data[:lives].each do |key, value|
    value.each do |names|
      if data[:lives][key].include?(names)
        pidgeons[names][:lives] << key
      end
    end
  end
  pidgeons
end
