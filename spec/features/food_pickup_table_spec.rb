require 'rails_helper'

feature 'pickup list' do
  scenario 'user can see restaurants that are giving away food', js: true do
    visit '/'

    expect(page).to have_content('Find restaurants that are giving away food')
  end
end