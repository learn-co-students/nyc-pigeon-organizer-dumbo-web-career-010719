require 'pry'
def nyc_pigeon_organizer(data)	# takes argument of hash (pigeon_data), iterates over hash, and builds new hash with pigeon names as keys pointing to value of hash describing attributes/values
	pigeon_list = {}			# set a variable equal to an empty hash, adding new key/value pairs throughout iteration

	# names = data[:color].each {|keys, values| values}.values.flatten	# creates array of unique names
	
	# cgl = data.keys			# creates array of data hash keys
	# cgl_hash = {}			# creates empty hash for color/gender/lives
	# cgl.each { |attribute| cgl_hash[attribute] = [] }		# iterates through cgl array, adding :color/:gender/:lives keys equal to empty arrays

	# names.each { |name| pigeon_list[name] = cgl_hash }		# iterates through names array, adding each name as a key, each with a cgl_hash
	
	data.each do |k, v|
		v.each do |k1, v1|
			if pigeon_list[v1] == nil
				pigeon_list[v1] = {}
			end
			pigeon_list[v1][:color] ||= []
			pigeon_list[v1][:color] << data[:color].key(v1)
			pigeon_list[v1][:gender] ||= []
			pigeon_list[v1][:gender] << data[:gender].key.v1
			pigeon_list[v1][:lives] ||= []
			pigeon_list[v1][:lives] << data[:live].key.v1
		end	
	end
	pigeon_list
	binding.pry
end