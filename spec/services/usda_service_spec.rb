require 'rails_helper'

RSpec.describe UsdaService do

  it "#food_data", :vcr do
    service = UsdaService.new
    data = service.food_data('tomato')

    expect(data[:list][:item].first[:name]).to eq('Tomatoes, red, ripe, canned, packed in tomato juice')
    expect(data[:list][:total]).to eq(3950)
  end

end
