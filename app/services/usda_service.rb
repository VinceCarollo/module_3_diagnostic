class UsdaService

  def food_data(term)
    response = search('/ndb/search', term)
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  attr_reader :term

  def search(path, term)
    conn.get(path) do |req|
      req.params['q'] = term
    end
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.params['api_key'] = ENV['API_KEY']
      faraday.params['format'] = 'json'
      faraday.params['sort'] = 'r'
      faraday.params['max'] = '1000'
    end
  end
end
