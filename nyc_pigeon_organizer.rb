require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |overall_att, hash|
    hash.each do |specific_att, cat_name_arr|
      cat_name_arr.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(overall_att)
          pigeon_list[name][overall_att] = []
        end
        if !pigeon_list[name][overall_att].include?(specific_att)
          pigeon_list[name][overall_att] << specific_att.to_s
        end
      end
    end
  end
  pigeon_list
end
