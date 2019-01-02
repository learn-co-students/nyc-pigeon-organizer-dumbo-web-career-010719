require 'pry'
def nyc_pigeon_organizer(data)	# takes argument of hash (pigeon_data), iterates over hash, and builds new hash with pigeon names as keys pointing to value of hash describing attributes/values
	pigeon_list = {}			# set a variable equal to an empty hash, adding new key/value pairs throughout iteration

	# names = data[:color].each {|keys, values| values}.values.flatten	# creates array of unique names
	
	# cgl = data.keys			# creates array of data hash keys
	# cgl_hash = {}			# creates empty hash for color/gender/lives
	# cgl.each { |attribute| cgl_hash[attribute] = [] }		# iterates through cgl array, adding :color/:gender/:lives keys equal to empty arrays

	# names.each { |name| pigeon_list[name] = cgl_hash }		# iterates through names array, adding each name as a key, each with a cgl_hash
	
	data.each do |cgl, cgl_hash|
		# binding.pry
		cgl_hash.each do |colors_genders_lives_keys, names|
			names.each do |name|
				if pigeon_list[name] == nil
					pigeon_list[name] = {}
				end
				pigeon_list[name][cgl] ||= []
				pigeon_list[name][cgl] << colors_genders_lives_keys.to_s
			end
			# binding.pry
		end	
	end
	pigeon_list
	# binding.pry
end