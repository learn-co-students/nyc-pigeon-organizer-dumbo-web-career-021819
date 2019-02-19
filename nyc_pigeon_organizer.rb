def nyc_pigeon_organizer(data)
  pigeons_list = {}
  data.each do |info, adj_hash|
    adj_hash.each do |adj, name_arr|
      name_arr.each do |name|
        pigeons_list[name] ||= {}
        pigeons_list[name][info] ||= []
        pigeons_list[name][info] << adj.to_s
      end
    end
  end
  return pigeons_list
end
