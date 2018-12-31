require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, values|
    values.each do |value, names|
      names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
          pigeon_list[name][attribute] = []
          pigeon_list[name][attribute] << value.to_s
        elsif pigeon_list[name] != nil
          if pigeon_list[name][attribute] == nil
            pigeon_list[name][attribute] = []
          end
          pigeon_list[name][attribute] << value.to_s
        end
      end
      #binding.pry
    end
  end
  pigeon_list
end