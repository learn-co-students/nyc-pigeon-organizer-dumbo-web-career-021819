def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |attribute, details|
    details.each do |detail, name_array|
      name_array.each do |name|
        pigeon_list[name] = {}
      end
    end
  end
  pigeon_data.each do |attribute, details|
    details.each do |detail, name_array|
      name_array.each do |name|
        pigeon_list[name][attribute] = []
      end
    end
  end
  pigeon_data.each do |attribute, details|
    details.each do |detail, name_array|
      name_array.each do |name|
        pigeon_list[name][attribute] << detail.to_s
      end
    end
  end
  pigeon_list
end

