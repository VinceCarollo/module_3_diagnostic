require 'rails_helper'

RSpec.describe Food do

  before :each do
    @food = Food.new({
      ndbno: 12,
      name: 'tomato can',
      group: 'veggie',
      ds: "vince's mind",
      manu: 'the ground'
      })
  end

  it "exists" do
    expect(@food).to be_a Food
  end

  it "has attributes" do
    expect(@food.ndb_number).to eq(12)
    expect(@food.name).to eq('tomato can')
    expect(@food.category).to eq('veggie')
    expect(@food.data_source).to eq("vince's mind")
    expect(@food.manufacturer).to eq('the ground')
  end

end
