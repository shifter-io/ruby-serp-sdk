# frozen_string_literal: true

require_relative "serp_api_search"

# Google Search Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-search
class GoogleSearch < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Maps API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-maps-api
class GoogleMapsAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_MAPS_ENGINE)
    check_params(%i[q engine type])
  end
end

# Google Maps Reviews API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-maps-reviews-api
class GoogleMapsReviewsAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_MAPS_REVIEWS_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Autocomplete API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-autocomplete-api
class GoogleAutocompleteAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_AUTOCOMPLETE_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Scholar API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-scholar-api
class GoogleScholarAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Scholar Profiles API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-scholar-profiles-api
class GoogleScholarProfilesAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_PROFILES_ENGINE)
    check_params(%i[mauthors engine])
  end
end

# Google Scholar Author API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-scholar-author-api
class GoogleScholarAuthorAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_AUTHOR_ENGINE)
    check_params(%i[author_id engine])
  end
end

# Google Scholar Cite API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-scholar-cite-api
class GoogleScholarCiteAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_SCHOLAR_CITE_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Product API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-product-api
class GoogleProductAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_PRODUCT_ENGINE)
    check_params(%i[product_id engine])
  end
end

# Google Reverse Image API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-reverse-image-api
class GoogleReverseImageAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_REVERSE_IMAGE_ENGINE)
    check_params(%i[image_url engine])
  end
end

# Google Jobs API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-jobs-api
class GoogleJobsAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_JOBS_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Jobs Listing API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-jobs-listing-api
class GoogleJobsListingAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_JOBS_LISTING_ENGINE)
    check_params(%i[q engine])
  end
end

# Google Events API Result powered by Serp API
# Check code samples at examples/google_demo.ro
# Docs: https://shifter.gitbook.io/shifter-documentation/scraping-api/serp-google-api/google-events-api
class GoogleEventsAPI < SerpAPISearch
  def initialize(params = {})
    super(params, GOOGLE_EVENTS_ENGINE)
    check_params(%i[q engine])
  end
end
