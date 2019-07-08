class UsdaService
  def initialize(term)
    @term = term
  end

  def food_data
    response = fetch('/ndb/search')
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  attr_reader :term

  def fetch(path)
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
