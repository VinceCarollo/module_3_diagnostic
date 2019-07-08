class SearchFacade
  def initialize(term)
    @term = term
  end

  def search_results
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params['api_key'] = ENV['API_KEY']
      faraday.params['format'] = 'json'
      faraday.params['sort'] = 'r'
    end

    response = conn.get('/ndb/search') do |req|
      req.params['q'] = term
    end

    food_data = JSON.parse(response.body, symbolize_names: true)

    food_data[:item].map do |food_data|
      Food.new(food_data)
    end
  end

  private
  attr_reader :term
end
