require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each { |info, specifics|
    specifics.each {|specificsKey, namesArr|
      namesArr.each {|name|
        
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
          pigeon_list[name][info] = []
        else 
          pigeon_list[name][info] = []
        end
  
      }
    }
  }
  
  pigeon_list.each {|names, categories|
    categories.each {|catKey, arr|
    data.each {|info, specifics|
      specifics.each {|specificsKey, namesArr|
        namesArr.each {|name|
          if name == names && catKey == info
            arr.push(specificsKey.to_s)
          end
        }
      }
    }
    }
  }
  
  binding.pry
  return pigeon_list
end