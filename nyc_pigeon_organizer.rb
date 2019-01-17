def nyc_pigeon_organizer(data)
  outputhash = {}
  data.each do |category, infohash|
    infohash.each do |detail, namearray|
      namearray.each do |name|
        if outputhash.key?(name)
          if outputhash[name].key?(category)
            outputhash[name][category] << detail.to_s
          else
            outputhash[name][category] = [detail.to_s]
          end
        else
          outputhash[name] = {}
          outputhash[name][category] = [detail.to_s]
        end
      end
    end
  end
  outputhash
end
