
# def nyc_pigeon_organizer(pigeon_data)
#   # write your code here!
#   pigeon_list = Hash.new
#   pigeon_data.each do |key, value| # key = :color, :gender, :lives
#     value.each do |key1, name_array|
#       name_array.each do |name|
#         # binding.pry
#         match = false
#         pigeon_list.each do |pigeon_name, attributes|
#           if pigeon_name == name
#             match = true
#             # if !attributes[key]
#             #   attributes[key] = []
#             # end
#             attributes[key] << key1.to_s
#           end
#         end
#         if match == false
#           pigeon_list[name] = {
#             :color => [],
#             :gender => [],
#             :lives => []
#           }
#           pigeon_list[name][key] << key1.to_s
#         end
#       end
#     end
#   end
#   pigeon_list
# end


def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  pigeon_list = Hash.new
  pigeon_data.each do |key, value| # key = :color, :gender, :lives
    value.each do |key1, name_array|
      name_array.each do |name|
        # binding.pry
        match = false
        pigeon_list.each do |pigeon_name, attributes|
          if pigeon_name == name
            match = true
            if !attributes[key]
              attributes[key] = []
            end
            attributes[key] << key1.to_s
          end
        end
        if match == false
          pigeon_list[name] = Hash.new
          pigeon_list[name][key] = []
          pigeon_list[name][key] << key1.to_s
        end
      end
    end
  end
  pigeon_list
end
