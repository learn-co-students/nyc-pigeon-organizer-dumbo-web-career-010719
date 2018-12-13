def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |type, hash|
    hash.each do |specific, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][type] ||= []
        new_hash[name][type] << specific.to_s

      end
    end
  end

  return new_hash
end

