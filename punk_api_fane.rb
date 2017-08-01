require "httparty"

module PunkApi

	include HTTParty

	base_uri 'https://api.punkapi.com/v2/beers'

	def self.get_beer_with_food(*food_names)

		query = "https://api.punkapi.com/v2/beers?food="

		food_names.map do |food_name|

			food_name.gsub(" ","_")
			query += food_name + "&"

		end

		self.get(query)
	end




	def self.get_beer_with_params(params_hash)

		query = "?"

		keys = params_hash.keys
		values = params_hash.values

		for i in 0...((params_hash.length) -1) do 
					
			query += keys[i].to_s + "=" + values[i] + "&"

		end

		self.get(query)
		
	end	

	def self.get_beers
		self.get("").body
	end

end


# puts PunkApi::get_beer_with_food("burger")


query_params_hash = {

	food: "burger",
	brewed_after: "03-2001"

}


# puts PunkApi::get_beer_with_params(query_params_hash).class
puts PunkApi::get_beer_with_food("chicken wings")[0]["food_pairing"]




