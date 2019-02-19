require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  
  
  new_hash = {}
  
  data.each do |property, hash|         #color , purple => ["Theo","Peter Jr." , "Luckyat"]
    hash.each do |attribute, array|     # purple , ["Theo","Peter Jr." , "Luckyat"]
      array.each do |name|              # "Theo" , "Peter Jr." , "Ms. K"
        
        
        
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
        #binding.pry
        
      end
    end
  end
  
  new_hash
  
  
  
end