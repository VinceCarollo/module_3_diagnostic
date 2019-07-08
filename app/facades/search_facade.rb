class SearchFacade
  def initialize(term)
    @term = term
  end

  def search_results
    food_data = service.food_data(term)

    food_data[:list][:item].map do |food_data|
      Food.new(food_data)
    end
  end

  private
  attr_reader :term

  def service
    UsdaService.new
  end
end
