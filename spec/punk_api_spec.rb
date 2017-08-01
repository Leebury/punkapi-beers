require 'spec_helper'

# THIS WILL BE FOR OUR CLASS/MODULE
describe "PUNK API OBJECT/CLASS/MODULE" do
	
	before(:all) do
		# THIS WILL BE AN INSTANCE OF OUR CLASS/MODULE
		@all_beers = JSON.parse(get("https://api.punkapi.com/v2/beers"))
		# puts @all_beers
	end

	# THE TESTS WILL GO HERE

	# it "should have a header with at least 200 requests left" do
	# end

	# it "should return 234 beers" do
	# end

	# it "should return 80 beers per page, for 3 pages" do
	# 	# expect(@all_beers.length).to eq(25)
	# end

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
	# end

	# SECOND HALF
	
	# it "should have a key inside the temp hash called unit, of datatype string" do
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
	# end

	# it "should have a hash inside the method hash called fermentation" do
	# end

	# it "should have a hash inside the fermentation hash called temp" do
	# end

	# it "should have a key inside the temp hash called value, of datatype float OR null" do
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

	# it "should have a key called contributed_by, of datatype string" do
	# end







end