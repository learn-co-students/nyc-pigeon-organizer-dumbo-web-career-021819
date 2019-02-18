require "pry"

def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |key, value|
    value.each do |key1, value1|
      value1.each do |name|
        pigeons[name] ||= {}
        pigeons[name][key] ||= []
        pigeons[name][key] << key1.to_s
      end
    end
  end
  pigeons
end
