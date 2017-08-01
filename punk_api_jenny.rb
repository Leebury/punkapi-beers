require_relative 'spec/spec_helper'


# OUR CLASS/MODULE WILL GO HERE

module PunkApi
    require 'httparty'

    def self.get_all_beers
        beers_page_1 = HTTParty.get('https://api.punkapi.com/v2/beers?page=1&per_page=80')
        beers_page_2 = HTTParty.get('https://api.punkapi.com/v2/beers?page=2&per_page=80')
        beers_page_3 = HTTParty.get('https://api.punkapi.com/v2/beers?page=3&per_page=80')
        beers_page_1.push(beers_page_2).push(beers_page_3)
    end

    def self.get_beer_by_name(name)
        HTTParty.get("https://api.punkapi.com/v2/beers?beer_name=#{name}")
    end

    def self.check_rate_limit
        HTTParty.get("https://api.punkapi.com/v2/beers").headers["x-ratelimit-remaining"]
    end
    
end