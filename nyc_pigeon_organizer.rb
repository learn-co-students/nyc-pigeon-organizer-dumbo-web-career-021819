require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.map do |attribute, detail|
    #attribute = :color, :gender, :lives
    detail.map do |detail_name, value|
      #detail_name = :purple..., :male ..., :lives...
      value.map do |name|
        #check to see if name and attribute values are already present
        if pigeon_list.has_key?(name) && pigeon_list[name].has_key?(attribute)
          pigeon_list[name][attribute] << (detail_name.to_s)
          #if not, check to see if there is just the name included
        elsif pigeon_list.has_key?(name)
          pigeon_list[name][attribute] = [detail_name.to_s]
          #if not, create the new hash for pigeon_list[name] and assign values
        else
          pigeon_list[name] = {}
          pigeon_list[name][attribute] = [detail_name.to_s]
        end
      end
    end
  end
  return pigeon_list
end
