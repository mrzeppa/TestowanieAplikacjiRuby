class ResistorColorDuo
	def self.value(band)
		colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
		colors.map {|item| band.index(item)}.join.to_i
	end
end