# frozen_string_literal: true

require_relative "../lib/serp_sdk/google_search"

RSpec.describe "Serp SDK Abstract Class" do
  before(:all) do
    SerpAPISearch.api_key = ENV["API_KEY"]
    @request = SerpAPISearch.new({ q: "Coffee", engine: "google" })
  end

  it "get_hash" do
    hash = @request.get_hash
    expect(hash["organic_results"].size).to be > 5
  end

  it "get_json" do
    json = @request.get_json
    expect(json.size).to be > 10_000
    expect(json).to match /coffee/i
  end
end

RSpec.describe "Construct URL methods" do
  MAIN_API = "serp.shifter.io"
  MAIN_API_PATH = "/v1"

  it "construct_url" do
    SerpAPISearch.api_key = nil
    request = SerpAPISearch.new({ q: "Coffee", api_key: nil }, "google")
    expect(request.construct_url(MAIN_API, MAIN_API_PATH).to_s).to eq("https://serp.shifter.io/v1?q=Coffee&engine=google")
  end

  it "construct_url" do
    request = SerpAPISearch.new({ q: "Coffee", api_key: "hello_world" }, "google")
    expect(request.construct_url(MAIN_API, MAIN_API_PATH).to_s).to eq("https://serp.shifter.io/v1?q=Coffee&api_key=hello_world&engine=google")
  end
end
