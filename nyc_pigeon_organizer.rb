def nyc_pigeon_organizer(pigeon_data)

pigeons = {}

# populate pigeons array with names

pigeon_data.each do |obj, cat|
  cat.each do |subcat, arr|
    arr.each do |pigeon|
      pigeons[pigeon] = {}
    end
  end 
end 

# populates each pigeon with attribute and array

pigeon_data.each do |obj, cat|
  pigeons.each do |pigeon, att|
    att[obj] = []
  end 
end

# populates array with attributes

pigeons.each do |street_bird, object|
  object.each do |attribute, array|
    pigeon_data.each do |obj, cat|
      cat.each do |subcat, arr|
        
        if arr.include?(street_bird) 
          if !pigeons[street_bird.to_s][obj.to_sym].include?(subcat.to_s) 
            pigeons[street_bird.to_s][obj.to_sym] << subcat.to_s
          end
        end 
      end
    end
  end
end 

pigeons

end