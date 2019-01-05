require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attributes,info|

    info.map do | info , name |
      n = 0
      while info == :purple && n < name.size
        hash ={}
        hash[:color] = [info.to_s]
        pigeon_list[name[n]] = hash
        n += 1
      end
      keys = pigeon_list.keys

      while info == :grey && n < name.size
        hash ={}
        hash[:color] = info.to_s
      if keys.include?(name[n])
          pigeon_list[name[n]][:color] << info.to_s
          n += 1
        else hash[:color] = [info.to_s]
          pigeon_list[name[n]] = hash
          n += 1
        end
      end

      while info == :white && n < name.size
        hash ={}
        hash[:color] = info.to_s
      if keys.include?(name[n])
          pigeon_list[name[n]][:color] << info.to_s
          n += 1
        else hash[:color] = [info.to_s]
          pigeon_list[name[n]] = hash
          n += 1
        end
      end

      while info == :brown && n < name.size
        hash ={}
        hash[:color] = info.to_s
      if keys.include?(name[n])
          pigeon_list[name[n]][:color] << info.to_s
          n += 1
        else hash[:color] = [info.to_s]
          pigeon_list[name[n]] = hash
          n += 1
        end
      end

      while info == :male && n < name.size
        pigeon_list[name[n]][:gender] = [info.to_s]
        n += 1
      end

      while info == :female && n < name.size
        pigeon_list[name[n]][:gender] = [info.to_s]
        n += 1
      end

      while info == "Subway" && n < name.size
        pigeon_list[name[n]][:lives] = [info.to_s]
        n += 1
      end

      while info == "Central Park" && n < name.size
        pigeon_list[name[n]][:lives] = [info.to_s]
        n += 1
      end

      while info == "Library" && n < name.size
        pigeon_list[name[n]][:lives] = [info.to_s]
        n += 1
      end

      while info == "City Hall" && n < name.size
        pigeon_list[name[n]][:lives] = [info.to_s]
        n += 1
      end
    end
  end
  return pigeon_list
end
