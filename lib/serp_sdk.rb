# frozen_string_literal: true

# Main module which acts as a namespace for all our classes
module SerpSdk
  require_relative "serp_sdk/version"
  require_relative "serp_sdk/serp_api_search"
  require_relative "serp_sdk/google_search"
  require_relative "serp_sdk/bing_search"
  require_relative "serp_sdk/yandex_search"

  class Error < StandardError; end
  # Your code goes here...
end
