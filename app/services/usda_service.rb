class UsdaService
  def initialize(term)
    @term = term
  end

  def food_data
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params['api_key'] = ENV['API_KEY']
      faraday.params['format'] = 'json'
      faraday.params['sort'] = 'r'
      faraday.params['max'] = '1000'
    end

    response = conn.get('/ndb/search') do |req|
      req.params['q'] = @term
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
