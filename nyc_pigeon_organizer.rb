require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |pigeon_attr, attr_hash|
    attr_hash.each do |attr_val, pigeons_arr|
      pigeons_arr.each do |pigeon_name|
        if new_hash.has_key?(pigeon_name) && new_hash[pigeon_name].has_key?(pigeon_attr)
          new_hash[pigeon_name][pigeon_attr].push(attr_val.to_s)
        elsif new_hash.has_key?(pigeon_name)
          new_hash[pigeon_name][pigeon_attr] = [attr_val.to_s]
        else 
          new_hash[pigeon_name] = {}
          new_hash[pigeon_name][pigeon_attr] = [attr_val.to_s]
        end
      end
    end
  end
  return new_hash
end