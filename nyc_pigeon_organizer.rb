pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# def nyc_pigeon_organizer(data)
#   newHash = {}
#   data.each { |keyType, valObj|
#     valObj.each { |atrKey, nameArr|
#       nameArr.each { |elem|
#         if !newHash.has_key?(elem)
#           newHash[elem] ||= {:color => [], :gender => [], :lives => []}
#         end
#         if nameArr.include?(elem)
#           newHash[elem][keyType].push(atrKey.to_s)
#         end
#       }
#     }
#   }
#   puts newHash
#   return newHash
# end

def nyc_pigeon_organizer(data)
  # !!!!!! ||= is a conditional assignment operator. If the value is nil it
  # !!!!!! shall be assigned. Else it will be kept as is.
  # !!!!!! &&= is a conditional assigment operator. If the value is not nil
  # !!!!!! aka the value exists, then it shall be assigned.

  newHash = {}
  data.each { |keyType, valObj|
    valObj.each { |atrKey, nameArr|
      nameArr.each { |elem|
        newHash[elem] ||= {}
        newHash[elem][keyType] ||= []
        newHash[elem][keyType].push(atrKey.to_s)
      }
    }
  }
  puts newHash
  return newHash
end
nyc_pigeon_organizer(pigeon_data)
