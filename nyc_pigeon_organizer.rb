require "pry"

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(x, y), z|
    y.each do |colors, names|
      names.each do |name|
        z[name] ||= {}
        z[name][x] ||= []
        z[name][x] << colors.to_s
      end
    end
  end
end
