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

    it "successfully searches for foods", :vcr do
      visit '/'

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("531 Results")

      within "#food-1" do
        within(".ndb_number") do
          expect(page).to have_content('45094945')
        end
        within(".name") do
          expect(page).to have_content('ONE POTATO TWO POTATO, PLAIN JAYNES, SWEET POTATO CHIPS, UPC: 785654000544')
        end
        within(".category") do
          expect(page).to have_content('Branded Food Products Database')
        end
        within(".data_source") do
          expect(page).to have_content('LI')
        end
        within(".manufacturer") do
          expect(page).to have_content("Dieffenbach's Potato Chips")
        end
      end

      within "#food-2" do
        within(".ndb_number") do
          expect(page).to have_content('45165952')
        end
        within(".name") do
          expect(page).to have_content('TERRA, SWEET POTATO CHIPS, PUMPKIN SPICE SWEETS, UPC: 728229014751')
        end
        within(".category") do
          expect(page).to have_content('Branded Food Products Database')
        end
        within(".data_source") do
          expect(page).to have_content('LI')
        end
        within(".manufacturer") do
          expect(page).to have_content("THE HAIN CELESTIAL GROUP, INC.")
        end
      end

      within "#food-3" do
        within(".ndb_number") do
          expect(page).to have_content('45109414')
        end
        within(".name") do
          expect(page).to have_content("CHILI'S, SWEET & SPICY CHICKEN & SWEET POTATOES, BIG BOLD, UPC: 717854470377")
        end
        within(".category") do
          expect(page).to have_content('Branded Food Products Database')
        end
        within(".data_source") do
          expect(page).to have_content('LI')
        end
        within(".manufacturer") do
          expect(page).to have_content("Bellisio Foods Inc")
        end
      end

      within "#food-4" do
        within(".ndb_number") do
          expect(page).to have_content('45219208')
        end
        within(".name") do
          expect(page).to have_content("SWEET POTATO POPPED POTATO CRISPS, UPC: 075450137415")
        end
        within(".category") do
          expect(page).to have_content('Branded Food Products Database')
        end
        within(".data_source") do
          expect(page).to have_content('LI')
        end
        within(".manufacturer") do
          expect(page).to have_content("Hy-Vee, Inc.")
        end
      end

      within "#food-5" do
        within(".ndb_number") do
          expect(page).to have_content('45324838')
        end
        within(".name") do
          expect(page).to have_content("SWEET POTATO KETTLE POTATO CHIPS, UPC: 762111242839")
        end
        within(".category") do
          expect(page).to have_content('Branded Food Products Database')
        end
        within(".data_source") do
          expect(page).to have_content('LI')
        end
        within(".manufacturer") do
          expect(page).to have_content("STARBUCKS COFFEE COMPANY")
        end
      end

      within "#food-6" do
        within(".ndb_number") do
          expect(page).to have_content('45372027')
        end
        within(".name") do
          expect(page).to have_content("SWEET POTATOES, RED POTATOES, CARROTS & PARSNIPS VEGETABLES FOR ROASTING, UPC: 070560970907")
        end
        within(".category") do
          expect(page).to have_content('Branded Food Products Database')
        end
        within(".data_source") do
          expect(page).to have_content('LI')
        end
        within(".manufacturer") do
          expect(page).to have_content("The Pictsweet Company")
        end
      end

      within "#food-7" do
        within(".ndb_number") do
          expect(page).to have_content('11505')
        end
        within(".name") do
          expect(page).to have_content("Sweet potato leaves, raw")
        end
        within(".category") do
          expect(page).to have_content('Vegetables and Vegetable Products')
        end
        within(".data_source") do
          expect(page).to have_content('SR')
        end
        within(".manufacturer") do
          expect(page).to have_content("none")
        end
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

      expect(page).to_not have_css("#food-11")
    end


  end
end
