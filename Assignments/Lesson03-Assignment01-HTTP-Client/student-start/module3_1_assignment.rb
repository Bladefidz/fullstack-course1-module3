require 'httparty'

# Pwd: OTVacevcuhijWe7
ENV['FOOD2FORK_KEY'] = "62f22f0e574df8dc52f358da6b5cb04f"
class Recipe
	include HTTParty

	base_uri "http://food2fork.com/api"
	default_params key: ENV['FOOD2FORK_KEY']
	format :json

	def self.for keyword
		get("/search", query: { q: keyword })["recipes"]
	end
end
