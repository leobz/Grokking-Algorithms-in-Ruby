require "rspec/autorun"
require "benchmark"
require_relative "breadth_first_search.rb"

describe BreadthFirstSearch do

    before(:context) do
        # You can see the graph illustration here -> https://drek4537l1klr.cloudfront.net/bhargava/Figures/102fig02.jpg
        @graph = {}
        @graph["you"] = ["bob", "alice", "claire"]
        @graph["bob"] = ["you", "anuj", "peggy"]
        @graph["alice"] = ["you", "peggy"]
        @graph["claire"] = ["you", "thom", "jonny"]
        @graph["anuj"] = ["bob"]
        @graph["peggy"] = ["bob", "alice"]
        @graph["jonny"] = ["claire"]
        @graph["thom"] =  ["claire"]
    end

    it "Find Mango Seller" do
        @graph["you"] = @graph["you"] + ["MangoSellerLevel1"]
        @graph["alice"] = @graph["alice"] + ["MangoSellerLevel2"]
        @graph["thom"] = @graph["thom"] + ["MangoSellerLevel3"]

        # Level 1
        expect(BreadthFirstSearch.find_mango_seller(@graph)).to eq("MangoSellerLevel1")

        # Level 2
        @graph["you"] = @graph["you"] - ["MangoSellerLevel1"]
        expect(BreadthFirstSearch.find_mango_seller(@graph)).to eq("MangoSellerLevel2")

        # Level 3
        @graph["alice"] = @graph["alice"] - ["MangoSellerLevel2"]
        expect(BreadthFirstSearch.find_mango_seller(@graph)).to eq("MangoSellerLevel3")

        # Nil
        @graph["thom"] = @graph["thom"] - ["MangoSellerLevel3"]
        expect(BreadthFirstSearch.find_mango_seller(@graph)).to eq(nil)
    end
end