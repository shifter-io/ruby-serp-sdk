# frozen_string_literal: true

require_relative "serp_api_search"

# Yandex Search Result powered by Serp API
# Check code samples at examples/yandex_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-yandex-api/yandex
class YandexSearch < SerpAPISearch
  def initialize(params = {})
    super(params, YANDEX_ENGINE)
    check_params(%i[text engine])
  end

  def get_location
    raise "`location` is not supported by #{YANDEX_ENGINE}"
  end
end
