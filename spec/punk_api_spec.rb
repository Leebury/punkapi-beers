require 'spec_helper'

# THIS WILL BE FOR OUR CLASS/MODULE
describe "PUNK API OBJECT/CLASS/MODULE" do
	
	before(:all) do
		# THIS WILL BE AN INSTANCE OF OUR CLASS/MODULE
		@beer = get("https://api.punkapi.com/v2/beers")
		puts @beer
	end

	# THE TESTS WILL GO HERE

	# it "should have a header with at least 200 requests left" do
	# end

	# it "should return 234 beers" do
	# end

	# it "should return 80 beers per page, for 3 pages" do
	# end

	it "should return an array, containing individual hashes for each beer" do
	end

	it "should have a key called id, of datatype integer" do
	end

	it "should have a key called name, of datatype string" do
	end

	it "should have a key called tagline, of datatype string" do
	end

	it "should have a key called first_brewed, of datatype string" do
	end

	it "should have a key called description, of datatype string" do
	end

	it "should have a key called image_url, of datatype string" do
	end

	it "should have a key called abv, of datatype float" do
	end

	it "should have a key called ibu, of datatype float OR null" do
	end

	it "should have a key called target_fg, of datatype float OR null" do
	end

	it "should have a key called target_og, of datatype float OR null" do
	end

	it "should have a key called ebc, of datatype float OR null" do
	end

	it "should have a key called srm, of datatype float OR null" do
	end

	it "should have a key called ph, of datatype float OR null" do
	end

	it "should have a key called attenuation_level, of datatype float OR null" do
	end

	it "should have a hash called volume" do
	end

	it "should have a key inside the volume hash called value, of datatype integer" do
	end

	it "should have a key inside the volume hash called unit, of datatype string" do
	end

	it "should have a hash called boil_volume" do
	end

	it "should have a key inside the boil_volume hash called value, of datatype integer" do
	end

	it "should have a key inside the boil_volume hash called unit, of datatype string" do
	end

	it "should have a hash called method" do
	end

	it "should have an array inside the method hash called mash_temp" do
	end

	it "should have AT LEAST ONE hash inside the mash_temp array" do
	end

	it "should have a hash inside the hash within the mash_temp array called temp" do
	end

	it "should have a key inside the temp hash called value, of datatype integer/FLOAT??? OR null" do
	end

	# SECOND HALF
	
	it "should have a key inside the temp hash called unit, of datatype string" do
	end

	it "should have a key inside the hash within the mash_temp array called duration, of datatype integer OR null" do
	end

	it "should have a hash inside the method hash called fermentation" do
	end

	it "should have a hash inside the fermentation hash called temp" do
	end

	it "should have a key inside the temp hash called value, of datatype float OR null" do
	end

	it "should have a key inside the temp hash called unit, of datatype string" do
	end

	it "should have a key inside the method hash called twist, of datatype string OR null" do
	end

	it "should have a hash called ingredients" do
	end

	it "should have an array inside the ingredients hash called malt" do
	end

	it "should have a AT LEAST ONE hash inside the malt array" do
	end

	it "should have a key inside the hash within the malt array called name, of datatype string" do
	end

	it "should have a hash inside the hash within the malt array called amount" do
	end

	it "should have a key inside the amount hash called value, of datatype float" do
	end

	it "should have a key inside the amount hash called unit, of datatype string" do
	end

	it "should have an array inside the ingredients hash called hops" do
	end

	it "should have AT LEAST ONE hash inside the hops array" do
	end

	it "should have a key inside the hash within the hops array called name, of datatype string" do
	end

	it "should have a hash inside the hash within the hops array called amount" do
	end

	it "should have a key inside the amount hash called value, of datatype float" do
	end

	it "should have a key inside the amount hash called unit, of datatype string" do
	end

	it "should have a key inside the hash within the hops array called add, of datatype string" do
	end

	it "should have a key inside the hash within the hops array called attribute, of datatype string" do
	end

	it "should have a key inside the ingredients hash called yeast, of datatype string OR null" do
	end

	it "should have an array called food_pairing" do
	end

	it "should have AT LEAST ONE string inside the food_pairing array" do
	end

	it "should have a key called brewers_tips, of datatype string" do
	end

	it "should have a key called contributed_by, of datatype string" do
	end







end