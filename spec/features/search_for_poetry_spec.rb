require 'rails_helper'

describe 'As a user' do
  describe 'When I visit the home page' do
    it 'I can search for poetry and see the results' do
      visit root_path
      fill_in :author, with: 'Emily'
      click_button 'Get Poems'
      expect(current_path).to eq('/search')

      expect(page).to have_content('Here is the first 10 results that meet your search criteria')
      within(first('.poetry')) do

        expect(page).to have_css('.title')
        title = find('.title').text
        expect(title).to_not be_empty

        expect(page).to have_css('.author')
        author = find('.author').text
        expect(author).to_not be_empty

        expect(page).to have_css('.poem')
        poem = find('.poem').text
        expect(poem).to_not be_empty
      end
    end
  end
end