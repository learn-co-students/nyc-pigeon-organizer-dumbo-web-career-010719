def nyc_pigeon_organizer(data)
  # write your code here!
  hash = Hash.new
  data.each do |k, v|
    v.each do |t, s|
      s.each do |i|
      hash[i]={:color =>[], :gender =>[], :lives =>[] }
    end
    end
  end

  hash.each do |k, v|
    data[:color].each do |t, s|
      s.each do |i|
        if i.to_s == k.to_s
          v[:color]<<t.to_s
        end
      end
    end
  end

   hash.each do |k, v|
    data[:gender].each do |t, s|
      s.each do |i|
        if i.to_s == k.to_s
          v[:gender]<<t.to_s
        end
      end
    end
  end

   hash.each do |k, v|
    data[:lives].each do |t, s|
      s.each do |i|
        if i.to_s == k.to_s
          v[:lives]<<t.to_s
        end
      end
    end
  end
  hash
end