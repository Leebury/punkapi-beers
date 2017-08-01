require 'spec_helper'
require_relative '../punk_api.rb'

# THIS WILL BE FOR OUR CLASS/MODULE
describe PunkApi do
	
	before(:all) do
		# THIS WILL BE AN INSTANCE OF OUR CLASS/MODULE
		@all_beers = JSON.parse(get("https://api.punkapi.com/v2/beers"))
		# puts @all_beers
	end

	# it "should return an array, containing individual hashes for each beer" do
	# 	expect(@all_beers.class).to eq(Array)

	# 	@all_beers.each do |hash|
	# 		expect(hash).to be_kind_of(Hash)
	# 	end
	# end

	# it "should have a key called id, of datatype integer" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to have_key("id")
	# 		expect(hash["id"].class).to eq Integer
	# 	end

	# end

	# it "should have a key called name, of datatype string" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to have_key("name")
	# 		expect(hash["name"].class).to be String
	# 	end
	# end

	# it "should have a key called tagline, of datatype string" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to have_key "tagline"
	# 		expect(hash["tagline"].class).to be String
	# 	end
	# end

	# it "should have a key called first_brewed, of datatype string" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to have_key "first_brewed"
	# 		expect(hash["first_brewed"].class).to be String

	# 	end
	# end

	# it "should have a key called description, of datatype string" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to have_key "description"
	# 		expect(hash["description"].class).to be String
	# 	end
	# end

	# it "should have a key called image_url, of datatype string" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to have_key "image_url"
	# 		expect(hash["image_url"].class).to be String
	# 	end
	# end

	# it "should have a key called abv, of datatype float or integer" do
	# 	@all_beers.each do |beer|
	# 		expect(beer).to have_key "abv"
	# 		expect(beer["abv"]).to be_kind_of(Integer).or be_kind_of(Float)
	# 	end
	# end

	# it "should have a key called ibu, of datatype float OR null" do
	# 	@all_beers.each do |beer|
	# 		expect(beer).to have_key "ibu"
	# 		expect(beer["ibu"]).to be_kind_of(Float).or be_kind_of(Integer).or be(nil)
	# 	end
	# end

	# it "should have a key called target_fg, of datatype float OR null" do
	# end

	# it "should have a key called target_og, of datatype float OR null" do
	# end

	# it "should have a key called ebc, of datatype float OR null" do
	# end

	# it "should have a key called srm, of datatype float OR null" do
	# end

	# it "should have a key called ph, of datatype float OR null" do
	# end

	# it "should have a key called attenuation_level, of datatype float OR null" do
	# end

	# it "should have a hash called volume" do
	# 	@all_beers.each do |hash|
	# 		expect(hash).to include("volume")
	# 		expect(hash["volume"]).to be_kind_of Hash
	# 	end
	# end

	# it "should have a key inside the volume hash called value, of datatype integer" do
	# 	@all_beers.each do |hash|
	# 		# expect(hash["volume"]).to have_key "value"
	# 		hash.each do |k,v|
	# 			if k == "volume"
	# 				# expect(v).to be_kind_of Hash
	# 				v.each do |k,v|
	# 					if k == "value"
	# 						expect(v.class).to be Integer
	# 					end
	# 				end
	# 			end

	# 		end
	# 	end
	# end

	# it "should have a key inside the volume hash called unit, of datatype string" do
	# 	@beer.each do |
	# end

	# it "should have a hash called boil_volume" do
	# end

	# it "should have a key inside the boil_volume hash called value, of datatype integer" do
	# end

	# it "should have a key inside the boil_volume hash called unit, of datatype string" do
	# end

	# it "should have a hash called method" do
	# end

	# it "should have an array inside the method hash called mash_temp" do
	# end

	# it "should have AT LEAST ONE hash inside the mash_temp array" do
	# end

	# it "should have a hash inside the hash within the mash_temp array called temp" do
	# end

	# it "should have a key inside the temp hash called value, of datatype integer/FLOAT??? OR null" do
=======
	it "should return an array, containing individual hashes for each beer" do
		expect_json_types(:array)
		@all_beers.each do |hash|
		 	expect(hash.class).to be(Hash)
		 end
	end

	it "should have a key called id, of datatype integer" do		
		 @all_beers.each do |hash|
		 	expect(hash).to include("id")
		 	expect(hash["id"].class).to be(Integer)
		 end
	end

	it "should have a key called name, of datatype string" do
		@all_beers.each do |hash|
		 	expect(hash).to include("name")
		 	expect(hash["name"].class).to be(String)
		 end
	end

	it "should have a key called tagline, of datatype string" do
		@all_beers.each do |hash|
		 	expect(hash).to include("tagline")
		 	expect(hash["tagline"].class).to be(String)
		 end
	end

	it "should have a key called first_brewed, of datatype string" do
		@all_beers.each do |hash|
		 	expect(hash).to include("first_brewed")
		 	expect(hash["first_brewed"].class).to be(String)
		 end
	end

	it "should have a key called description, of datatype string" do
		@all_beers.each do |hash|
		 	expect(hash).to include("description")
		 	expect(hash["description"].class).to be(String)
		 end
	end

	it "should have a key called image_url, of datatype string" do
		@all_beers.each do |hash|
		 	expect(hash).to include("image_url")
		 	expect(hash["image_url"].class).to be(String)
		 end
	end

	it "should have a key called abv, of datatype float or integer" do
			@all_beers.each do |hash|
		 	expect(hash).to include("abv")
		 	expect(hash["abv"].class).to eq(Integer).or eq(Float)
		 end
	end

	it "should have a key called ibu, of datatype float, integer OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("ibu")
		 	expect(hash["ibu"].class).to eq(Float).or eq(Integer).or eq(NilClass)
		 end
	end

	
	it "should have a key called target_fg, of datatype float, integer OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("target_fg")
		 	expect(hash["target_fg"].class).to eq(Float).or eq(Integer).or eq(NilClass)
		 end
	end

	it "should have a key called target_og, of datatype float OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("target_og")
		 	expect(hash["target_og"].class).to eq(Float).or eq(Integer).or eq(NilClass)
		 end
	end

	it "should have a key called ebc, of datatype float OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("ebc")
		 	expect(hash["ebc"].class).to eq(Integer).or eq(NilClass)
		 end
	end

	it "should have a key called srm, of datatype float, integer OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("srm")
		 	expect(hash["srm"].class).to eq(Float).or eq(Integer).or eq(NilClass)
		 end
	end

	it "should have a key called ph, of datatype float, integer OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("ph")
		 	expect(hash["ph"].class).to eq(Float).or eq(Integer).or eq(NilClass)
		 end
	end

	it "should have a key called attenuation_level, of datatype float, integer OR nil" do
			@all_beers.each do |hash|
		 	expect(hash).to include("attenuation_level")
		 	expect(hash["attenuation_level"].class).to eq(Float).or eq(Integer).or eq(NilClass)
		 end
	end

	it "should have a hash called volume" do
		@all_beers.each do |hash_of_beer|
			hash_of_beer.each do |k,v|
				if k == "volume"
					expect(v).to be_kind_of Hash
				end
			end
		end
	end

	it "should have a key inside the volume hash called value, of datatype integer" do
		@all_beers.each do |hash_of_beer|
			hash_of_beer.each do |key,value|
				if key == "volume"
					value.each do|v, data_type|
						if v == "value"
							expect(data_type.class).to be Integer
						end
					end
				end
			end
		end
	end

	it "should have a key inside the volume hash called unit, of datatype string" do
		@all_beers.each do |hash_of_beer|
			hash_of_beer.each do |key,value|
				if key == "volume"
					value.each do|v, data_type|
						if v == "unit"
							expect(data_type.class).to be String
						end
					end
				end
			end
		end
	end

	# it "should have a hash called boil_volume" do
	# 	@all_beers.each do |hash_of_beer|
	# 		hash_of_beer.each do |key,value|
	# 			if key == "boil_volume"
	# 				expect(value).to be Hash
	# 			end
	# 		end
	# 	end
	# end

	# it "should have a key inside the boil_volume hash called value, of datatype integer" do
	# end

	# it "should have a key inside the boil_volume hash called unit, of datatype string" do
	# end

	# it "should have a hash called method" do
	# end

	# it "should have an array inside the method hash called mash_temp" do
	# end

	# it "should have AT LEAST ONE hash inside the mash_temp array" do
	# end

	# it "should have a hash inside the hash within the mash_temp array called temp" do
	# end

	# it "should have a key inside the temp hash called value, of datatype integer/FLOAT??? OR nil" do
>>>>>>> 405403859ce3c6019082355253bff7ac7dc43269
	# end

	# # SECOND HALF
	
	# it "should have a key inside the temp hash called unit, of datatype string" do
<<<<<<< HEAD
	# 	@all_beers.each do |hash|
	# 		if hash.is_a? (Hash)
	# 			hash.each do |key|
	# 				if key == "mash_tem"
	# 					key.each do |k,v|
	# 						expect(k).to eq "unit"
	# 						expect(v.class).to eq String
	# 					end
	# 				end 
	# 			end
	# 		end
	# 	end
	# end

	# it "should have a key inside the hash within the mash_temp array called duration, of datatype integer OR null" do
=======
	# end

	# it "should have a key inside the hash within the mash_temp array called duration, of datatype integer OR nil" do
>>>>>>> 405403859ce3c6019082355253bff7ac7dc43269
	# end

	# it "should have a hash inside the method hash called fermentation" do
	# end

	# it "should have a hash inside the fermentation hash called temp" do
	# end

<<<<<<< HEAD
	# it "should have a key inside the temp hash called value, of datatype float OR null" do
=======
	# it "should have a key inside the temp hash called value, of datatype float OR nil" do
>>>>>>> 405403859ce3c6019082355253bff7ac7dc43269
	# end

	# it "should have a key inside the temp hash called unit, of datatype string" do
	# end

	# it "should have a key inside the method hash called twist, of datatype string OR null" do
	# end

	# it "should have a hash called ingredients" do
	# end

	# it "should have an array inside the ingredients hash called malt" do
	# end

	# it "should have a AT LEAST ONE hash inside the malt array" do
	# end

	# it "should have a key inside the hash within the malt array called name, of datatype string" do
	# end

	# it "should have a hash inside the hash within the malt array called amount" do
	# end

	# it "should have a key inside the amount hash called value, of datatype float" do
	# end

	# it "should have a key inside the amount hash called unit, of datatype string" do
	# end

	# it "should have an array inside the ingredients hash called hops" do
	# end

	# it "should have AT LEAST ONE hash inside the hops array" do
	# end

	# it "should have a key inside the hash within the hops array called name, of datatype string" do
	# end

	# it "should have a hash inside the hash within the hops array called amount" do
	# end

	# it "should have a key inside the amount hash called value, of datatype float" do
	# end

	# it "should have a key inside the amount hash called unit, of datatype string" do
	# end

	# it "should have a key inside the hash within the hops array called add, of datatype string" do
	# end

	# it "should have a key inside the hash within the hops array called attribute, of datatype string" do
	# end

	# it "should have a key inside the ingredients hash called yeast, of datatype string OR null" do
	# end

	# it "should have an array called food_pairing" do
<<<<<<< HEAD
	# 	@all_beers.each do |x|
	# 		expect(x["food_pairing"].class).to eq(Array)
	# 	end
	# end

	# end

	# it "should have AT LEAST ONE string inside the food_pairing array" do
	# end

	# it "should have a key called brewers_tips, of datatype string" do
	# 	@all_beers.each do |beer|
	# 		expect(beer).to have_key "brewers_tips"
	# 		expect(beer["brewers_tips"].class).to be String
	# 	end
	# end

=======
	# end

	# it "should have AT LEAST ONE string inside the food_pairing array" do
	# end

	# it "should have a key called brewers_tips, of datatype string" do
	# end

>>>>>>> 405403859ce3c6019082355253bff7ac7dc43269
	# it "should have a key called contributed_by, of datatype string" do
	# end

	






end