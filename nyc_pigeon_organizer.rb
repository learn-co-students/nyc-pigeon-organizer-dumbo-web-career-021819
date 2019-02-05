def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |hashes, attributes|
    attributes.each do |describer, name|
      name.each do |array_item|
      if !pigeon_list.key?(array_item)
        pigeon_list[array_item] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  end
  data[:color].each do |hue, name|
    name.each do |pigeon_name|
      pigeon_list.keys.each do |thing|
        if pigeon_name == thing
          pigeon_list[thing][:color] << hue.to_s
        end
      end
    end
  end
  data[:gender].each do |sex, name|
    name.each do |pigeon_name|
      pigeon_list.keys.each do |thing|
        if pigeon_name == thing
          pigeon_list[thing][:gender] << sex.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |pigeon_name|
      pigeon_list.keys.each do |thing|
        if pigeon_name == thing
          pigeon_list[thing][:lives] << location.to_s
        end
      end
    end
  end
pigeon_list
end
