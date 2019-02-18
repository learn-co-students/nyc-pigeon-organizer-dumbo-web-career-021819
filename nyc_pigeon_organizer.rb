def nyc_pigeon_organizer(data)
  # write your code here!
  new_nyc_pigeon = {}

  data.each do |first_attribute, other_attributes|
    other_attributes.each do |key,value|
      value.each do |name|
      if !new_nyc_pigeon.has_key?(name)
        new_nyc_pigeon[name] = {}
      end
      if !new_nyc_pigeon[name].has_key?(first_attribute)
        new_nyc_pigeon[name][first_attribute] = []
    end
      if !new_nyc_pigeon[name][first_attribute].include?(key)
        new_nyc_pigeon[name][first_attribute] <<key.to_s
      end
    end
  end
end

 new_nyc_pigeon
end
