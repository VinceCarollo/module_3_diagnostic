require 'rails_helper'

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
# Then I should see a list of ten foods sorted by relevance.
#
# And for each of the foods I should see:
# - The food's NDB Number
# - The food's name
# - The food group to which the food belongs
# - The food's data source
# - The food's manufacturer

RSpec.describe 'As a visitor on the root page' do
  describe 'when filling in the search form' do

    it "successfully searches for foods" do
      visit '/'

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("531 Results")

      within "#food-1" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-2" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-3" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-4" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-5" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-6" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-7" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-8" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-9" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
      within "#food-10" do
        expect(page).to have_css(".ndb_number")
        expect(page).to have_css(".name")
        expect(page).to have_css(".category")
        expect(page).to have_css(".data_source")
        expect(page).to have_css(".manufacturer")
      end
    end

  end
end
