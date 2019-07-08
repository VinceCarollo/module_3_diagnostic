require 'rails_helper'

RSpec.describe SearchFacade do

  it "#search_results", :vcr do
    facade = SearchFacade.new("tomato")
    data = facade.search_results

    expect(data.first.name).to eq('Tomatoes, red, ripe, canned, packed in tomato juice')
    expect(data.length).to eq(1000)
  end

end
