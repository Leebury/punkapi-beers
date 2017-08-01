require 'airborne'
require "httparty"

# OUR CLASS/MODULE WILL GO HERE

module PunkApi

    include HTTParty

    def self.get_all_beers
        beers_page_1 = self.get('https://api.punkapi.com/v2/beers?page=1&per_page=80')
        beers_page_2 = self.get('https://api.punkapi.com/v2/beers?page=2&per_page=80')
        beers_page_3 = self.get('https://api.punkapi.com/v2/beers?page=3&per_page=80')
        beers_page_1.push(beers_page_2).push(beers_page_3)
    end

    def self.get_beer_by_name(name)
        beer = self.get("https://api.punkapi.com/v2/beers?beer_name=#{name}")[0]
    end

    def self.check_rate_limit
        self.get("https://api.punkapi.com/v2/beers").headers["x-ratelimit-remaining"]
    end

    def self.get_beer_with_params(params_hash)

        query = "https://api.punkapi.com/v2/beers?"
        keys = params_hash.keys
        values = params_hash.values

        for i in 0...((params_hash.length) -1) do 
            query += keys[i].to_s + "=" + values[i] + "&"
        end

        self.get(query)
    end 

    def self.get_beer_by_id(id)
        self.get("https://api.punkapi.com/v2/beers/#{id}")[0]
    end

    def self.get_random_beer
        self.get("https://api.punkapi.com/v2/beers/random")[0]
    end

    def self.get_beer_with_food(*food_names)

        query = "https://api.punkapi.com/v2/beers?food="

        food_names.map do |food_name|
            food_name.gsub(" ","_")
            query += food_name + "&"
        end

        self.get(query)
        
    end

end







