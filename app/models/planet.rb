class Planet < ActiveRecord::Base
	validates :planet, 
		presence: true, 
		length: {minimum: 3}, 
		uniqueness: true

	validates :diameter, 
		presence: true, 
		numericality: true

	# this method ignores commas for diameter
	def diameter=(num)
	  self[:diameter] = num.to_s.scan(/\b-?[\d.]+/).join.to_f
	end

	validates :mythological_god,
		presence: true,
		uniqueness: true 
	

end
