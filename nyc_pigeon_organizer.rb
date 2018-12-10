require "pry"


def nyc_pigeon_organizer(data)
  # write your code here!
  birds = {}

  data[:gender].each do |k, v|
    v.each do |k1,v1|
      birds[k1] = {:gender => [k.to_s]}
    end
  end

  data[:color].each do |k, v|
    v.each do |k1,v1|
      if birds[k1][:color].nil?
        birds[k1].merge!({:color => [k.to_s]})
      else
        birds[k1][:color] << k.to_s
      end
    end
  end

  data[:lives].each do |k, v|
    v.each do |k1,v1|
      birds[k1].merge!({:lives => [k.to_s]})
    end
  end

  birds

end
