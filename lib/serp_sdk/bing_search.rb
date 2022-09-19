# frozen_string_literal: true

require_relative "serp_api_search"

# Bing Search Result powered by Serp API
# Check code samples at examples/bing_demo.rb
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-bing-api/bing-search
class BingSearch < SerpAPISearch
  def initialize(params = {})
    super(params, BING_ENGINE)
    check_params(%i[q engine])
  end
end
