require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, kind|
    kind.each do |specific, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] = {} unless pigeon_list.has_key?(pigeon)
      end
    end
  end

  pigeon_list.each do |pigeon, attributes|
    data.each do |features, kind|
      attributes[features] = [] unless attributes.has_key?(features)
    end
  end

  data.each do |attribute, kind|
    kind.each do |specific, pigeons|
      pigeons.each do |pigeon|
        if pigeon_list.has_key?(pigeon)
          pigeon_list[pigeon][attribute].push(specific.to_s)
        end
      end
    end
  end
  pigeon_list
end
