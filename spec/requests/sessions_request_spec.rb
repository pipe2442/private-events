require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'Signing up', type: :system do
  describe 'signup page is showing the right fields' do
    it 'shows the Name from signup page' do
      visit '/users/new'
      expect(page).to have_content 'Name'
    end
    it 'shows the Email from signup page' do
      visit '/users/new'
      expect(page).to have_content 'Email'
    end
  end
end
